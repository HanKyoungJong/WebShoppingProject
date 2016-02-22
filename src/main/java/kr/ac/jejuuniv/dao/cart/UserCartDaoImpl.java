package kr.ac.jejuuniv.dao.cart;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import kr.ac.jejuuniv.model.Product;
import kr.ac.jejuuniv.model.UserCart;

public class UserCartDaoImpl implements UserCartDao {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<Product> findUsersProducstByUserId(String userId) {
		return sqlSession.<Product> selectList("findUsersProducstByUserId");
	}

	@Override
	public void insertUsersProduct(UserCart userCart) {
		sqlSession.insert("insertUsersProduct", userCart);
	}

	@Override
	public void deleteUsersProduct(long productId) {
		sqlSession.delete("deleteUsersProduct", productId);

	}
}