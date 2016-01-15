package kr.ac.jejuuniv.dao;

import java.util.List;

import kr.ac.jejuuniv.model.User;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

public class UserDaoImpl implements UserDao {

	@Autowired
	private SqlSession sqlSession;

	public UserDaoImpl() {
		super();
	}

	@Override
	public List<User> findAll() {
		return sqlSession.<User> selectList("findAll");
	}

	@Override
	public void insert(User user) {
		sqlSession.insert("insert", user);
	}

	@Override
	public void update(User user) {
		sqlSession.update("update", user);

	}

	@Override
	public void delete(String id) {
		sqlSession.delete("delete", id);

	}

	@Override
	public User findById(String id) {
		return sqlSession.<User> selectOne("findById", id);
	}

	@Override
	public int checkUser(User user) {
		return sqlSession.selectOne("checkUser", user);
	}

}
