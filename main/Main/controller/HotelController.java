package com.jsp.hotelmanagementsystem.controller;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.hotelmanagementsystem.dao.HotelDao;
import com.jsp.hotelmanagementsystem.entities.Hotel;

@Controller
public class HotelController {
	
	@Autowired
	HotelDao dao;
	
	@RequestMapping ("/addhotel")
	//handler used to create hotel object and pass it to HotelForm.jsp
	public ModelAndView addHotel() {
		Hotel hotel = new Hotel();
		ModelAndView mav = new ModelAndView();
		mav.addObject("hotelObj", hotel);
		mav.setViewName("HotelForm");
		return mav;	
	}
	@RequestMapping("/savehotel")
	//handler used to save hotel details into database
	public ModelAndView saveHotel(@ModelAttribute("hotelObj") Hotel hotel) {
		hotel.setStatus("Not approved");
		dao.saveHotel(hotel);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("message", "Hotel Created Successfully");
		mav.setViewName("HotelLogin");
		return mav;
	}
	@RequestMapping("/hotelloginvalidation")
	//handler use to perform login validation for hotel
	public ModelAndView loginValidation(ServletRequest request, HttpSession session) {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		Hotel hotel = dao.login(email, password);
		
		if (hotel != null) {
			if (hotel.getStatus().equals("Not Approved")) {
				ModelAndView mav = new ModelAndView();
				mav.addObject("message","Your account is Review");
				mav.setViewName("DisplayMessage");
				return mav;
			}
			else if (hotel.getStatus().equals("Blocked")) {
				ModelAndView mav = new ModelAndView();
				mav.addObject("message","Your account is Blocked");
				mav.setViewName("DisplayMessage");
				return mav;
			}
			else {
				//storing hotel entity object into session
				//storing the logged in hotel into session
				session.setAttribute("hotelInfo", hotel.getId());
				ModelAndView mav = new ModelAndView();
				mav.addObject("message","Login Successfully");
				mav.setViewName("HotelOption");
				return mav;
			}
		} else {
			ModelAndView mav = new ModelAndView();
			mav.addObject("message","Invalid credentials");
			mav.setViewName("HotelLogin");
			return mav;
		}
	}
	@RequestMapping("/fetchnotapprovedhotels")
	//handler use to return Not-approved Hotels
	public ModelAndView fetchNotApprovedHotels() {
		List<Hotel> hotels = dao.findNotApprovedHotels();
		ModelAndView mav = new ModelAndView();
		mav.addObject("notapprovedhotels", hotels);
		mav.setViewName("DisplayNotApprovedHotels");
		return mav;
	}
	@RequestMapping("/approvehotels")
	//handle is used to modify the Hotel status is approved
	public ModelAndView approveHotel(@RequestParam("id") int id) {
		Hotel h = dao.findHotelById(id);
		h.setStatus("Approved");
		dao.updateHotel(h);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect://fetchnotapprovedhotels");
		return mav;
	}
	@RequestMapping("/hotellogout")
	//handler is used to delete the product data in HttpSession
	public ModelAndView Logout(HttpSession session) {
		session.invalidate();
		ModelAndView mav = new ModelAndView();
		mav.addObject("message", "Logged Out Successfully");
		mav.setViewName("HotelHome");
		return mav;
		
	}
}
