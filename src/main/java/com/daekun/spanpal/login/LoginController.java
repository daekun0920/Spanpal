package com.daekun.spanpal.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.daekun.spanpal.login.service.LoginService;
import com.daekun.spanpal.model.SignUpVO;
import com.daekun.spanpal.util.SHA256;

@Controller
public class LoginController {

	@Autowired
	LoginService service;

	@RequestMapping(value = "/signIn.do", method = RequestMethod.POST)
	public @ResponseBody SignUpVO signIn(SignUpVO vo, HttpServletRequest req) {
		SignUpVO obj = new SignUpVO();

		try {
			String compPw = SHA256.getSHA256(vo.getUser_email() + vo.getUser_pw());

			obj.setUser_pw(compPw);

			SignUpVO check = service.selectLogin(obj);

			if (null != check) {
				if (check.getUse_yn().equals("Y")) {
					HttpSession session = req.getSession();

					session.setAttribute("user_id", vo.getUser_email());
					
					obj.setResult(true);
				} else {
					obj.setMessage("Not confirmed user.");
					obj.setResult(false);
				}
			} else {
				obj.setMessage("wrong id or password!");
				obj.setResult(false);
			}
		} catch (Exception e) {
			e.printStackTrace();
			obj.setMessage("Error!");
			obj.setResult(false);
		}

		return obj;
	}
}
