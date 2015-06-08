package kr.ac.jejuuniv.han.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import kr.ac.jejuuniv.han.model.User;

@Repository
public interface UserDao {

	List<User> findAll();

}
