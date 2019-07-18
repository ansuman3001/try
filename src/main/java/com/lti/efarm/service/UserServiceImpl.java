package com.lti.efarm.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.efarm.dao.UserDAO;
import com.lti.efarm.model.User;

@Service
public class UserServiceImpl implements UserService {

	
	@Autowired
	private UserDAO userDAO;
	
	
	@Transactional
	public User checkUser(User theUser) {
		return userDAO.checkUser(theUser);
	}

}
