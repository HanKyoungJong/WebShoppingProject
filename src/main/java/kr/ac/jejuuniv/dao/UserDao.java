package kr.ac.jejuuniv.dao;

import java.util.List;

import kr.ac.jejuuniv.model.User;

import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {

	List<User> findAll();

	void insert(User user);

	void update(User user);

	void delete(String id);

	User findById(String id);

	int checkUser(User user);
}
