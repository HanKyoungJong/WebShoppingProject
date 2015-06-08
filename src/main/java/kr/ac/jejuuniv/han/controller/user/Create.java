package kr.ac.jejuuniv.han.controller.user;

import kr.ac.jejuuniv.han.model.User;
import kr.ac.jejuuniv.han.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/create")
public class Create {
	@Autowired
	private UserService userService;

	@RequestMapping
	public java.util.List<User> list() {
		return userService.list();
	}
}
