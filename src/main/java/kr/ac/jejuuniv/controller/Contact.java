package kr.ac.jejuuniv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value ="/contact")
public class Contact {
	@Autowired
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView contact() {
		ModelAndView model = new ModelAndView();
		model.setViewName("contact");
		return model;
	}

}
