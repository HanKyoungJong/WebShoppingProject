package kr.ac.jejuuniv.han.service;

import java.util.List;

import kr.ac.jejuuniv.han.model.User;

public interface UserService {

	List<User> list();

	void insert(User user);

	void update(User user);

	void delete(String id);

	User findUser(String id);
}
