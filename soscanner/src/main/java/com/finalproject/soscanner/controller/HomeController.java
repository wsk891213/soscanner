package com.finalproject.soscanner.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping("/")
	public String home(Locale locale, Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
		Locale sLocale = (Locale)session.getAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME);
		if(sLocale == null) {
		session.setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME, Locale.ENGLISH);
		}
		return "/main/home";
	}
	
	@RequestMapping(value = "/multiLingual")
	public String changeLocale(@RequestParam(required = false) String locale, ModelMap map, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Locale locales = null;
		if (locale.matches("en")) {
			locales = Locale.ENGLISH;
		} else if (locale.matches("ko")) {
			locales = Locale.KOREAN;
		} else {
			locales = Locale.CHINESE;
		}
		session.setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME, locales);
		return "redirect:" + request.getHeader("referer");
	}
}
