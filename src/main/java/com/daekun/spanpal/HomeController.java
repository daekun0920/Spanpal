package com.daekun.spanpal;

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
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.daekun.spanpal.model.SignUpVO;

@Controller
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		try {
			mailSender("123");
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return "home";
	}

	@RequestMapping(value = "/signUp.do")
	public String signUp(SignUpVO vo, Model model) {
		try {
			model.addAttribute("vo", vo);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/business/sign_up/sign_up";
	}

	@RequestMapping(value = "/search.do")
	public String search(Locale locale, Model model) {

		return "/business/search/search";
	}

	@RequestMapping(value = "/online.do")
	public String online(Locale locale, Model model) {

		return "/business/online/online";
	}

	@RequestMapping(value = "/messages")
	public String messages(Locale locale, Model model) {

		return "/business/messages/messages";
	}

	public void mailSender(String id) throws AddressException, MessagingException {
		String host = "smtp.naver.com";
		
		final String username = "gkseorjs123";
		final String password = "drinky12#$";
		
		Integer port = 465;
		
		String recipient = "gkseorjs123@naver.com";
		String subject = "Hello";
		String body = "<h1>Hello!</h1>";
		
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
		
		Message mimeMessage = new MimeMessage(session);
		mimeMessage.setContent(body, "text/html; charset=UTF-8");
		mimeMessage.setFrom(new InternetAddress("gkseorjs123@naver.com"));
		mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
		
		mimeMessage.setSubject(subject);
		Transport.send(mimeMessage);
	}
}
