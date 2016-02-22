package kr.ac.jejuuniv.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.jejuuniv.model.Product;
import kr.ac.jejuuniv.model.User;
import kr.ac.jejuuniv.service.product.ProductService;

@RequestMapping(value = "/contact")
@Controller
public class Contact {
	@Autowired
	private ProductService productService;

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView contact(HttpSession session) {
		ModelAndView model = new ModelAndView();
		String viewName = null;
		User loginUser = (User) session.getAttribute("loginUser");
		if (loginUser != null) {
			viewName = "contact";
		} else {
			viewName = "redirect:login";
		}
		model.setViewName(viewName);
		return model;
	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView contactForm(@ModelAttribute Product product, HttpSession session) {
		ModelAndView model = new ModelAndView();
		productService.registeProduct(product, session);
		model.setViewName("redirect:productList");
		return model;
	}

}
