package com.finalproject.soscanner.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import com.finalproject.soscanner.service.TourGuideService;
import com.finalproject.soscanner.vo.TourInfoVO;

@RequestMapping("/tourGuide")
@Controller
public class TourInfoController {
	
	private static final Logger logger = LoggerFactory.getLogger(TourInfoController.class);
	
	@Autowired
	private TourGuideService tgService;
	
	@RequestMapping("/seoulMap")
	public void seoulMap(HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();
		String sessionName = SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME.toString();
		System.out.println(sessionName);
		Locale locale = (Locale)session.getAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME);
		//현재 세션에 있는 locale 정보
		model.addAttribute("locale", locale);
		System.out.println(locale);
	}
	
	@RequestMapping("/infoList")
	public void infoList(TourInfoVO loc, Model model) throws Exception {
			
			List<TourInfoVO> lists = tgService.getInfos(loc);
			model.addAttribute("lists", lists);
			if(loc.getSlocation() != null){
				model.addAttribute("slocation", loc.getSlocation());
			}
			else {
				model.addAttribute("sWord", loc.getsWord());
			}
	}
	
	@RequestMapping("/infoDetail")
	public void infoDetail(@RequestParam("ti_no") int no, TourInfoVO info, Model model) throws Exception {
		model.addAttribute("ti_no", no);
		if(info.getsWord() == "" || info.getsWord() == null) {
			model.addAttribute("check", "check");
			model.addAttribute("pWord", info.getSlocation());
		}
		else{
			model.addAttribute("pWord", info.getsWord());
		}
		
		model.addAttribute(tgService.getInfo(no));
	}
	
	@RequestMapping("findRoute")
	public void findRoute(@ModelAttribute TourInfoVO tour, Model model) {
	}
}






