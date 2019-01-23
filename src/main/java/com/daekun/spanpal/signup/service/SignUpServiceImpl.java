package com.daekun.spanpal.signup.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.daekun.spanpal.model.SignUpVO;
import com.daekun.spanpal.signup.dao.SignUpDAO;

@Service
public class SignUpServiceImpl implements SignUpService {
	
	@Autowired
	SignUpDAO dao;

	@Override
	public void addUser(SignUpVO vo) {
		dao.addUser(vo);

	}
	@Override
	public SignUpVO selectUser(SignUpVO vo) {
		return dao.selectUser(vo);
	}

	@Override
	public void updateUserUseYN(SignUpVO vo) {
		dao.updateUserUseYN(vo);
	}
	
	
}
