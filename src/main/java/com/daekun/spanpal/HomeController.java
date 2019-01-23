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

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.methods.PostMethod;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.daekun.spanpal.model.SignUpVO;

@Controller
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
	
		return "home";
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

}
