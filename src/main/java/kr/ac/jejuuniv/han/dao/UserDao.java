package kr.ac.jejuuniv.han.dao;

import java.util.List;

import kr.ac.jejuuniv.han.model.User;

import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {

	List<User> findAll();

	void insert(User user);

	void update(User user);
	
	void delete(String id);
}
