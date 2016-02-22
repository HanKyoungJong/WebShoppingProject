package kr.ac.jejuuniv.controller;

import javax.servlet.http.HttpSession;

import kr.ac.jejuuniv.model.User;
import kr.ac.jejuuniv.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class Reset {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/reset", method = RequestMethod.GET)
	public ModelAndView userInfoReset(@ModelAttribute User input, HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();

		User loginUser = (User) session.getAttribute("loginUser");

		String viewName = null;

		if (loginUser != null) {
			viewName = "reset";
		} else {
			viewName = "redirect:login";
		}

		modelAndView.setViewName(viewName);
		return modelAndView;
	}

	@RequestMapping(value = "/resetUserPassword", method = RequestMethod.POST)
	public ModelAndView userInfoResetForm(@ModelAttribute User input, HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();

		String viewName = null;

		User loginUser = (User) session.getAttribute("loginUser");

		if (loginUser != null) {

			User resetUser = new User();
			resetUser.setName(loginUser.getName());
			resetUser.setPassword(input.getPassword());
			userService.update(resetUser);

			viewName = "redirect:home";
		} else {
			viewName = "redirect:login";
		}

		modelAndView.setViewName(viewName);
		return modelAndView;
	}
}
