package kr.ac.jejuuniv.han.service;

import java.util.List;

import kr.ac.jejuuniv.han.dao.UserDao;
import kr.ac.jejuuniv.han.model.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	@Override
	public List<User> list() {
		return userDao.findAll();
	}

	@Override
	public void insert(User user) {
		userDao.insert(user);
	}

	@Override
	public void update(User user) {
		userDao.update(user);
	}

	@Override
	public void delete(String id) {
		userDao.delete(id);
	}

}
