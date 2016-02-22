package kr.ac.jejuuniv.dao.cart;

import java.util.List;

import org.springframework.stereotype.Repository;

import kr.ac.jejuuniv.model.Product;
import kr.ac.jejuuniv.model.UserCart;

@Repository
public interface UserCartDao {
	List<Product> findUsersProducstByUserId(String userId);

	void deleteUsersProduct(long productId);

	void insertUsersProduct(UserCart userCart);
}
