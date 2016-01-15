package kr.ac.jejuuniv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/woman")
public class Woman {
	@Autowired
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView woman() {
		ModelAndView model = new ModelAndView();
		model.setViewName("woman");
		return model;
	}

}
