package com.daekun.spanpal.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.daekun.spanpal.login.dao.LoginDAO;
import com.daekun.spanpal.model.SignUpVO;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	LoginDAO dao;
	
	@Override
	public SignUpVO selectLogin(SignUpVO obj) {
		
		
		return dao.selectLogin(obj);
	}

}
