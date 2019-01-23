package com.daekun.spanpal.signup.dao;

import com.daekun.spanpal.model.SignUpVO;

public interface SignUpDAO {
	public void addUser(SignUpVO vo);

	public SignUpVO selectUser(SignUpVO vo);

	public void updateUserUseYN(SignUpVO vo);
}
