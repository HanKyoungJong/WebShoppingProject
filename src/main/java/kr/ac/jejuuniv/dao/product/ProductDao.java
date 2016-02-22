package kr.ac.jejuuniv.dao.product;

import java.util.List;

import kr.ac.jejuuniv.model.Product;

import org.springframework.stereotype.Repository;

@Repository
public interface ProductDao {
	Product findProductById(long id);

	void insertProduct(Product product);

	void deleteProduct(long id);

	List<Product> findAllProducts();

	List<Product> findMyProducts(String seller);

	Product findLatestProduct();

	void updateProduct(Product product);
}
