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
@RequestMapping("/login")
public class Login {

	@Autowired
	private UserService userService;

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView login(HttpSession session) {
		ModelAndView model = new ModelAndView();
		String viewName = null;

		User loginUser = (User) session.getAttribute("loginUser");

		if (loginUser != null) {
			viewName = "redirect:home";
		} else {
			viewName = "login";
		}

		model.setViewName(viewName);
		return model;

	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView loginSubmit(@ModelAttribute User user, RedirectAttributes redirectAttributes,
			HttpSession session) {
		ModelAndView model = new ModelAndView();

		String viewName = null;
		if (userService.findUser(user) != null) {
			User newUser = userService.findUser(user);
			session.setAttribute("loginUser", newUser);
			redirectAttributes.addFlashAttribute("user", newUser);
			viewName = "redirect:home";
		} else {
			model.addObject("error", "Invalid username and password!");
			viewName = "login";
		}
		model.setViewName(viewName);
		return model;
	}
}
