package com.daekun.spanpal.login.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.daekun.spanpal.model.SignUpVO;

@Repository
public class LoginDAOImpl implements LoginDAO {
	
	@Autowired
	SqlSessionTemplate sessionTemplate;
	
	@Override
	public SignUpVO selectLogin(SignUpVO obj) {
		
		return sessionTemplate.selectOne("loginmapper.selectLogin", obj);
	}

}
