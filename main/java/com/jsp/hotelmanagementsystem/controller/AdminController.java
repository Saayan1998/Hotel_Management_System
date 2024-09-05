package com.jsp.hotelmanagementsystem.controller;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.hotelmanagementsystem.dao.AdminDao;
import com.jsp.hotelmanagementsystem.entities.Admin;

@Controller
public class AdminController {
	
	@Autowired
	AdminDao dao;
	
	@RequestMapping ("/addadmin")
	//Handler used to create admin object and forward to AdminForm.jsp
	public ModelAndView addAdmin() {
		Admin admin = new Admin();
		ModelAndView mav = new ModelAndView();
		mav.addObject("adminObj", admin);
		mav.setViewName("AdminForm");
		return mav;	
	}
	
	@RequestMapping("/saveadmin")
	//Handler used to save Admin details into database
	public ModelAndView saveAdmin(@ModelAttribute("adminObj") Admin admin) {
		dao.saveAdmin(admin);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("message", "Account Created Successfully");
		mav.setViewName("AdminLogin");
		return mav;
	}
	@RequestMapping("/adminloginvalidation")
	//Handler use to perform login validation for Admin
	public ModelAndView loginValidation(ServletRequest request, HttpSession session) {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		Admin admin = dao.login(email, password);
		
		if (admin != null) {
			session.setAttribute("adminInfo", admin);
			ModelAndView mav = new ModelAndView();
			mav.addObject("message", "Login Successfully");
			mav.setViewName("AdminOption");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView();
			mav.addObject("message", "Invalid Credentials");
			mav.setViewName("AdminLogin");
			return mav;
		}
	}
	@RequestMapping("/adminlogout")
	//handler is used to delete the admin data in HttpSession
	public ModelAndView logout(HttpSession session) {
		session.invalidate();
		ModelAndView mav = new ModelAndView();
		mav.addObject("message", "Logged Out Successfully");
		mav.setViewName("AdminHome");
		return mav;		
	}
}
