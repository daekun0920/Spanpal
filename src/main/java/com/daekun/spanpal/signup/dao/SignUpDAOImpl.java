package com.daekun.spanpal.signup.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.daekun.spanpal.model.SignUpVO;

@Repository
public class SignUpDAOImpl implements SignUpDAO {
	
	@Autowired
	private SqlSessionTemplate sessionTemplate;

	@Override
	public void addUser(SignUpVO vo) {
		sessionTemplate.insert("signupmapper.insertUser", vo);
	}

	@Override
	public SignUpVO selectUser(SignUpVO vo) {
		return sessionTemplate.selectOne("signupmapper.selectUser", vo);
	}

	@Override
	public void updateUserUseYN(SignUpVO vo) {
		sessionTemplate.update("signupmapper.updateUserUseYN", vo);
	}
	
}
