package com.daekun.spanpal;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.daekun.spanpal.model.SignUpVO;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "home";
	}
	@RequestMapping(value = "/signUp.do")
	public String signUp(SignUpVO vo, Model model) {
		try {
			model.addAttribute("vo", vo);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/sign_up/sign_up";
	}
	@RequestMapping(value = "/search.do")
	public String search(Locale locale, Model model) {
		
		return "/search/search";
	}
	@RequestMapping(value = "/online.do")
	public String online(Locale locale, Model model) {
		
		return "/online/online";
	}
	@RequestMapping(value = "/messages")
	public String messages(Locale locale, Model model) {
		
		return "/messages/messages";
	}
}
