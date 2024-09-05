package com.jsp.hotelmanagementsystem.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.hotelmanagementsystem.dao.HotelDao;
import com.jsp.hotelmanagementsystem.dao.ProductDao;
import com.jsp.hotelmanagementsystem.entities.Admin;
import com.jsp.hotelmanagementsystem.entities.Hotel;
import com.jsp.hotelmanagementsystem.entities.Product;

@Controller
public class ProductController {
	
	@Autowired
	ProductDao productDao;
	
	@Autowired
	HotelDao hotelDao;
	
	@RequestMapping ("/addproduct")
	//Handler used to create product object and forward to ProductForm.jsp
	public ModelAndView addProduct() {
		Product product = new Product();
		ModelAndView mav = new ModelAndView();
		mav.addObject("productObj", product);
		mav.setViewName("ProductForm");
		return mav;	
	}
	@RequestMapping("/saveproduct")
	//handler used to save product details into database
	public ModelAndView saveProduct(@ModelAttribute("productObj") Product product,HttpSession session) {
		Integer hotelId= (Integer) session.getAttribute("hotelInfo");
		Hotel hotel =hotelDao.findHotelById(hotelId);
		List<Product> products = hotel.getProducts();
		if (products.size()>0) {
			products.add(product);
			hotel.setProducts(products);
		}
		else {
			List<Product> productsList = new ArrayList<Product>();
			productsList.add(product);
			hotel.setProducts(productsList);	
		}
		productDao.saveProduct(product);
		hotelDao.updateHotel(hotel);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("message", "Added Successfully");
		mav.setViewName("HotelOption");
		return mav;			
	}
	@RequestMapping("/viewallproduct")
	//this handler is used to fetch all the products of particular hotel and submit  to DisplayallProduct.jsp
	public ModelAndView fetchallProducts(HttpSession session) {
		Integer hotelId = (Integer) session .getAttribute("hotelInfo");
		Hotel hotel = hotelDao.findHotelById(hotelId);
		List<Product> products = hotel.getProducts();
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("products", products);
		mav.setViewName("DisplayAllProduct");
		return mav;
	}
	
	@RequestMapping("/updateproduct")
	public ModelAndView updateProduct(@RequestParam("id") int id) {
		Product product = productDao.findById(id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("existingProductInfo", product);
		mav.setViewName("UpdateProductForm");
		return mav;
	}
	
	@RequestMapping("/updateproductinfo")
	public ModelAndView updateProductInformation(@ModelAttribute("existingProductInfo") Product product) {
		productDao.updateProduct(product);
		ModelAndView mav = new ModelAndView();
		mav.addObject("message", "Update Successfully");
		mav.setViewName("redirect://viewallproduct");
		return mav;
	}
	@RequestMapping("/deleteproduct")
	public ModelAndView deleteProduct(@RequestParam("id") int id,HttpSession session) {
		Integer hotelId = (Integer) session.getAttribute("hotelInfo");
		Hotel hotel = hotelDao.findHotelById(hotelId);
		List<Product> products = hotel.getProducts();
		
		List<Product> productsList = products.stream().filter(product-> product.getId()!=id).collect(Collectors.toList());
		hotel.setProducts(productsList);
		
		hotelDao.updateHotel(hotel);
		productDao.deleteById(id);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("message", "Deleted Successfully");
		mav.setViewName("redirect:viewallproduct");
		return mav;
	}
	
	@RequestMapping ("/fetchproductsbyhotel")
	public ModelAndView fetchProductByHotel(ServletRequest request) {
		String hotelName = request.getParameter("hotelname");
		List<Product> products = productDao.fetchProductsByHotel(hotelName);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("productsList", products);
		mav.setViewName("DisplayProductToCustomer");
		return mav;
	}
	
	@RequestMapping ("/fetchallproducts")
	public ModelAndView fetchAllProducts() {
		List<Product> products = productDao.findAll();
		ModelAndView mav = new ModelAndView();
		mav.addObject("productsList", products);
		mav.setViewName("DisplayProductToCustomer");
		return mav;
	}
	
	@RequestMapping ("/fetchproductsbetweenpricerange")
	public ModelAndView fetchProductsBetweenPriceRange(ServletRequest request) {
		
		String minPrice = request.getParameter("minPrice");
		String maxPrice = request.getParameter("maxPrice");
		
		List<Product> products = productDao.fetchProductsBetweenPriceRange(Double.parseDouble(minPrice), Double.parseDouble(maxPrice));
		ModelAndView mav = new ModelAndView();
		mav.addObject("productsList", products);
		mav.setViewName("DisplayProductToCustomer");
		return mav;
	}
}
