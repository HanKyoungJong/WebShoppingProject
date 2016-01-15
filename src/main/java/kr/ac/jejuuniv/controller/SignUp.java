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
@RequestMapping("/signup")
public class SignUp {

	@Autowired
	private UserService userService;

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView signup() {
		ModelAndView model = new ModelAndView();
		model.setViewName("signup");
		return model;

	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView signup(@ModelAttribute User user, HttpSession session,
			RedirectAttributes redirectAttributes) {
		ModelAndView model = new ModelAndView();
		String viewName = "";

		User loginUser = (User) session.getAttribute("loginUser");

		if (loginUser != null) {
			session.setAttribute("loginUser", null);
		}

		if (userService.insert(user)) {
			redirectAttributes.addFlashAttribute("id", user.getId());
			viewName = "redirect:login";
		} else {
			model.addObject("msg", "Email already in use by another account.");
			viewName = "signup";
		}

		model.setViewName(viewName);

		return model;
	}

}
