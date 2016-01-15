package kr.ac.jejuuniv.service;

import java.util.List;

import kr.ac.jejuuniv.model.User;

public interface UserService {

	List<User> list();

	boolean insert(User user);

	void update(User user);

	void delete(String id);

	User findUser(User user);

}
