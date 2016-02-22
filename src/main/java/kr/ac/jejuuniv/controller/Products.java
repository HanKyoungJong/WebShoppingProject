package kr.ac.jejuuniv.controller;

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

@Controller
@RequestMapping("/product")
public class Products {
	@Autowired
	private ProductService productService;

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView product(@RequestParam("productId") long productId, HttpSession session) {

		ModelAndView modelAndView = new ModelAndView();

		User loginUser = (User) session.getAttribute("loginUser");

		Product findProduct = productService.findProduct(productId);

		if (loginUser != null) {
			String loginUserName = loginUser.getName();
			String seller = findProduct.getSeller();

			if (loginUserName.equals(seller)) {
				modelAndView.addObject("seller", seller);
			}
		}

		modelAndView.addObject("product", findProduct);
		modelAndView.setViewName("product");
		return modelAndView;
	}
}