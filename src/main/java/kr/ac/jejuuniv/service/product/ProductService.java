package kr.ac.jejuuniv.service.product;

import java.util.List;

import javax.servlet.http.HttpSession;

import kr.ac.jejuuniv.model.Product;

import org.springframework.stereotype.Repository;

public interface ProductService {
	Product findProduct(long id);

	List<Product> productList();

	List<Product> myProductList(String seller);

	void registeProduct(Product product, HttpSession session);

	Product getLatestProduct();

	void removeProduct(long id);
}
