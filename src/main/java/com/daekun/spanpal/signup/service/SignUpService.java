package com.daekun.spanpal.signup.service;

import com.daekun.spanpal.model.SignUpVO;

public interface SignUpService {
	public void addUser(SignUpVO vo);

	public SignUpVO selectUser(SignUpVO vo);

	public void updateUserUseYN(SignUpVO vo);

}
