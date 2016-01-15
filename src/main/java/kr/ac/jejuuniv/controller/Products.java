package kr.ac.jejuuniv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/products")
public class Products {
	@Autowired
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView service() {
		ModelAndView model = new ModelAndView();
		model.setViewName("products");
		return model;
	}

}
