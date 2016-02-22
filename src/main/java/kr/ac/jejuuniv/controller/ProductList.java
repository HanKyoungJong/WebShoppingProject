package kr.ac.jejuuniv.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.jejuuniv.model.Product;
import kr.ac.jejuuniv.service.product.ProductService;

@RequestMapping(value = "/productList")
@Controller
public class ProductList {

	@Autowired
	private ProductService productService;

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView man() {
		ModelAndView model = new ModelAndView();
		List<Product> list = productService.productList();
		model.addObject("productList", list);
		model.setViewName("productList");
		return model;
	}
}
