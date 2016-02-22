package kr.ac.jejuuniv.service.cart;

import java.util.List;

import kr.ac.jejuuniv.model.Product;
import kr.ac.jejuuniv.model.UserCart;

public interface CartService {
	void addProduct(UserCart userCart);

	List<Product> findProducts(String userId);

	boolean isExistedProduct(String userName, long productId);

	void deleteProduct(long productId);

}
