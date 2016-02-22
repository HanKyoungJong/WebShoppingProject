package kr.ac.jejuuniv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/lost")
public class Lost {

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView userInfoLost() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("lost");
		return modelAndView;
	}
}
