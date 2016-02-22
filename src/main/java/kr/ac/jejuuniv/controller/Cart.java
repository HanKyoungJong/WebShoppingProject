package kr.ac.jejuuniv.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ac.jejuuniv.model.User;
import kr.ac.jejuuniv.model.UserCart;
import kr.ac.jejuuniv.service.cart.CartService;

@Controller
public class Cart {
	@Autowired
	private CartService cartService;

	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public ModelAndView userCart(HttpSession session) {

		ModelAndView modelAndView = new ModelAndView();

		String viewName = null;

		User loginUser = (User) session.getAttribute("loginUser");

		if (loginUser != null) {
			modelAndView.addObject("cartList", cartService.findProducts(loginUser.getId()));
			viewName = "cart";
		} else {
			viewName = "redirect:login";
		}

		modelAndView.setViewName(viewName);

		return modelAndView;
	}

	@RequestMapping(value = "/addProduct", method = RequestMethod.POST)
	public ModelAndView addProduct(@RequestParam("productId") long productId, HttpSession session,
			RedirectAttributes redirectAttributes) {

		ModelAndView modelAndView = new ModelAndView();

		String viewName = null;

		User loginUser = (User) session.getAttribute("loginUser");

		if (loginUser != null) {
			String userId = loginUser.getId();

			if (!cartService.isExistedProduct(userId, productId)) {
				cartService.addProduct(new UserCart(userId, productId));
			} else {
				redirectAttributes.addFlashAttribute("msg", "The product has already been registered.");
			}
			viewName = "redirect:cart";
		} else {
			viewName = "redirect:login";
		}

		modelAndView.setViewName(viewName);

		return modelAndView;
	}

	@RequestMapping(value = "/deleteProduct", method = RequestMethod.POST)
	public ModelAndView deleteProduct(@RequestParam("productId") long productId, HttpSession session,
			RedirectAttributes redirectAttributes) {

		ModelAndView modelAndView = new ModelAndView();

		String viewName = null;

		User loginUser = (User) session.getAttribute("loginUser");

		if (loginUser != null) {
			cartService.deleteProduct(productId);
			viewName = "redirect:cart";
		} else {
			viewName = "redirect:login";
		}

		modelAndView.setViewName(viewName);

		return modelAndView;
	}
}