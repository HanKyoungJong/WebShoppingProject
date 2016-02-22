package kr.ac.jejuuniv.service;

import java.util.List;

import kr.ac.jejuuniv.dao.user.UserDao;
import kr.ac.jejuuniv.model.User;

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
	public boolean insert(User user) {
		userDao.insert(user);
		return false;

	}

	@Override
	public void update(User user) {
		userDao.update(user);
	}

	@Override
	public void delete(String id) {
		userDao.delete(id);
	}

	@Override
	public User findUser(User user) {
		User selectedUser = null;
		if (userDao.checkUser(user) >= 1) {
			selectedUser = userDao.findById(user.getId());
		}
		return selectedUser;
	}
}
