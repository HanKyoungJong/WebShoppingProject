package kr.ac.jejuuniv.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.jejuuniv.model.Product;
import kr.ac.jejuuniv.model.User;
import kr.ac.jejuuniv.service.product.ProductService;

@RequestMapping(value = "/uploadList")
@Controller
public class UploadList {
	@Autowired
	private ProductService productService;

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView myProductList(HttpSession session) {

		ModelAndView modelAndView = new ModelAndView();
		String viewName = null;

		User loginUser = (User) session.getAttribute("loginUser");
		if (loginUser != null) {
			List<Product> list = productService.myProductList(loginUser.getName());
			modelAndView.addObject("productList", list);
			viewName = "uploadList";
		} else {
			viewName = "redirect:login";
		}
		modelAndView.setViewName(viewName);

		return modelAndView;
	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView myProductListForm(@RequestParam("productId") long productId, HttpSession session) {

		ModelAndView modelAndView = new ModelAndView();
		String viewName = null;

		User loginUser = (User) session.getAttribute("loginUser");
		if (loginUser != null) {
			productService.removeProduct(productId);
			List<Product> list = productService.myProductList(loginUser.getName());
			modelAndView.addObject("productList", list);
			viewName = "uploadList";
		} else {
			viewName = "redirect:login";
		}
		modelAndView.setViewName(viewName);

		return modelAndView;
	}
}