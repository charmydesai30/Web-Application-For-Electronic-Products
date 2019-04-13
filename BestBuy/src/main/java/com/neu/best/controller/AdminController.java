package com.neu.best.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.neu.best.dao.ItemDAO;
import com.neu.best.dao.UserDAO;
import com.neu.best.pojo.ElectronicItem;



@Controller
@RequestMapping("/*")
public class AdminController {
	
	@Autowired
	@Qualifier("userDao")
	UserDAO userDao;
	
	@Autowired
	@Qualifier("itemDao")
	ItemDAO itemDao;
	
	@RequestMapping(value = "/addnewitem", method = RequestMethod.GET)
	protected ModelAndView adminAddNewItem() throws Exception {
		System.out.print("add new item");

		return new ModelAndView("add-new-item", "item", new ElectronicItem());

	}
	
	@RequestMapping(value = "/addnewitem", method = RequestMethod.POST)
	protected ModelAndView adminAddNewItem(HttpServletRequest request, @ModelAttribute("item") ElectronicItem item,
			BindingResult result) throws Exception {


		if (result.hasErrors()) {
			return new ModelAndView("add-new-item", "item", item);
		}

		try {
			
			ElectronicItem i = itemDao.addItem(item);
			return new ModelAndView("item-added-success", "item", i);

		} catch (Exception e) {
			System.out.println("Exception: " + e.getMessage());
			return new ModelAndView("error", "errorMessage", "error while login");
		}
		
		
		

	}
}
