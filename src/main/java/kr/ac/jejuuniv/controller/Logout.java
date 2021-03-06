package kr.ac.jejuuniv.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/logout")
public class Logout {

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView logOut(HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		session.setAttribute("loginUser", null);
		modelAndView.setViewName("redirect:home");
		return modelAndView;
	}
}
