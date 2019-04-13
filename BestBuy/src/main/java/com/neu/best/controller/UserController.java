package com.neu.best.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.neu.best.dao.UserDAO;
import com.neu.best.pojo.User;

@Controller
@RequestMapping("/*")
public class UserController {
	
	@Autowired
	UserDAO userDao;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	protected String goToUserLoginPage(HttpServletRequest request) throws Exception {
		return "login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	protected String loginUser(HttpServletRequest request) throws Exception {

		HttpSession session = (HttpSession) request.getSession();
		if( request.getParameter("username").equals("admin") && request.getParameter("password").equals("admin"))
		{
			return "post-admin-login";
			
		}

		try {

			System.out.print("loginUser");

			User u = userDao.get(request.getParameter("username"), request.getParameter("password"));

			if (u == null) {
				System.out.println("UserName/Password does not exist");
				session.setAttribute("errorMessage", "UserName/Password does not exist");
				return "error";
			}
			
		}
		
		
			

			catch(Exception e)
			{
				throw e;
			}
			return "home";
		}
	
	
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	protected ModelAndView registerNewUser(HttpServletRequest request, @ModelAttribute("user") User user,
			BindingResult result) throws Exception {

	

		if (result.hasErrors()) {
			return new ModelAndView("user-register", "user", user);
		}
		try
		{
			//user.setPassword(encrypt(request.getParameter("password"), 12));
			User u = userDao.register(user);
			
			request.getSession().setAttribute("user", u);

			return new ModelAndView("user-register-success", "user", u);

		}
		catch(Exception e)
		{
			throw e;
		}
		
	}
	@RequestMapping(value = "/registerPage", method = RequestMethod.GET)
	protected ModelAndView registerUserPage() throws Exception {
		System.out.print("registerUser");

		return new ModelAndView("user-register", "user", new User());
		
		
	}
	
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	protected String logoutUser(HttpServletRequest request) throws Exception {

		HttpSession session = (HttpSession) request.getSession();

		try {

			session.invalidate();

			return "home";

		} catch (Exception e) {
			System.out.println("Exception: " + e.getMessage());
			session.setAttribute("errorMessage", "error while login");
			return "error";
		}

	}
	
	

}
