package com.jsp.hotelmanagementsystem.controller;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.hotelmanagementsystem.dao.CustomerDao;
import com.jsp.hotelmanagementsystem.entities.Admin;
import com.jsp.hotelmanagementsystem.entities.Customer;

@Controller
public class CustomerController {
	@Autowired
	CustomerDao customerDao;
	
	@RequestMapping ("/addcustomer")
	//Handler used to create customer object and forward to CustomerForm.jsp
	public ModelAndView addCustomer() {
		Customer customer = new Customer();
		ModelAndView mav = new ModelAndView();
		mav.addObject("customerObj", customer);
		mav.setViewName("CustomerForm");
		return mav;	
	}
	@RequestMapping("/savecustomer")
	//Handler used to save Customer details into database
	public ModelAndView saveCustomer(@ModelAttribute("customerObj") Customer customer) {
		customerDao.saveCustomer(customer);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("message", "Register Successfully");
		mav.setViewName("CustomerLogin");
		return mav;
	}
	@RequestMapping("/customerloginvalidation")
	//Handler use to perform login validation for Customer
	public ModelAndView customerloginValidation(ServletRequest request, HttpSession session) {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		Customer customer = customerDao.login(email, password);
		
		if (customer != null) {
			session.setAttribute("customerInfo", customer.getId());
			ModelAndView mav = new ModelAndView();
			mav.addObject("message", "Login Successfully");
			mav.setViewName("CustomerOption");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView();
			mav.addObject("message", "Invalid Credentials");
			mav.setViewName("CustomerLogin");
			return mav;
		}
	}
}
