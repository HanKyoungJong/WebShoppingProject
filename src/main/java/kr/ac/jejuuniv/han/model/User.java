package kr.ac.jejuuniv.han.model;

import java.sql.SQLException;

import kr.ac.jejuuniv.han.dao.UserDao;

import org.springframework.beans.factory.annotation.Autowired;

public class User {
	@Autowired
	private UserDao userDao;

	private String id;
	private String name;
	private String password;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
