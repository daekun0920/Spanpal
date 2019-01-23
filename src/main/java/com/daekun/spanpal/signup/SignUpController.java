package com.daekun.spanpal.signup;

import java.util.Locale;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.daekun.spanpal.model.SignUpVO;
import com.daekun.spanpal.signup.service.SignUpService;
import com.daekun.spanpal.util.SHA256;

@Controller
public class SignUpController {
	@Autowired
	SignUpService service;

	@RequestMapping(value = "/signUp.do")
	public String signUp(SignUpVO vo, Model model) {
		try {
			model.addAttribute("vo", vo);
			System.out.println("123");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/business/sign_up/sign_up";
	}

	@RequestMapping(value = "/mail_format.do")
	public String mail_format(Locale locale, Model model) {

		return "/mail_format/mail_format";
	}
	
	
	@RequestMapping(value = "/confirm.do")
	public String confirm(@RequestParam String cfm_id) {

		if (cfm_id != null && cfm_id != "") {
			String key = cfm_id.substring(0, cfm_id.indexOf("|"));
			String seq = cfm_id.substring(cfm_id.indexOf("|") + 1);
			SignUpVO vo = new SignUpVO();
			
			vo.setUser_seq(seq);
			
			SignUpVO compVO = service.selectUser(vo);
			System.out.println(key);
			System.out.println(SHA256.getSHA256(compVO.getUser_email() + compVO.getUser_pw()));
			if (key.equals(compVO.getUser_pw())) {
				service.updateUserUseYN(vo);
			}
			
			return "/business/sign_up/confirm";
		} else {
			return "/";
		}
	}
	@RequestMapping(value = "/signUpSubmit.do")
	public String signUpSubmit(SignUpVO vo) {
		try {
			// 1. sha256으로 비밀번호 저장
			String pw = vo.getUser_email() + vo.getUser_pw();

			String encPw = SHA256.getSHA256(pw);

			vo.setUser_pw(encPw);
			
			service.addUser(vo);
			
			// 2. sha256 + seq 링크 보내기

			mailSender(vo.getUser_email(), encPw + "%7C" + vo.getUser_seq());

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/business/sign_up/afterSignUp";
	}

	public void mailSender(String id, String link) throws AddressException, MessagingException {
		String host = "smtp.naver.com";

		final String username = "gkseorjs123";
		final String password = "drinky12#$";

		Integer port = 465;

		String recipient = id;
		String subject = "Welcome to Spanpal!";

		Properties props = System.getProperties();

		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.trust", host);

		Session session = Session.getDefaultInstance(props, new Authenticator() {
			String un = username;
			String pw = password;

			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(un, pw);
			}
		});

		session.setDebug(true);

		PostMethod method = new PostMethod("http://localhost:8080/mail_format.do");
		
		NameValuePair nvp = new NameValuePair("cfm_link", link);
		
		method.addParameter(nvp);
		method.setRequestHeader("Content-type", "application/x-www-form-urlencoded;charset=UTF-8");

		HttpClient client = new HttpClient();
		String responseBody = "";
		try {
			client.executeMethod(method);
			responseBody = method.getResponseBodyAsString();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		
		
		Message mimeMessage = new MimeMessage(session);
		mimeMessage.setContent(responseBody, "text/html; charset=UTF-8");
		mimeMessage.setFrom(new InternetAddress("gkseorjs123@naver.com"));
		mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));

		mimeMessage.setSubject(subject);
		Transport.send(mimeMessage);
	}
}
