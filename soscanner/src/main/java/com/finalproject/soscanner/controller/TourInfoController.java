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
		Locale locale = (Locale)session.getAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME);
		model.addAttribute("locale", locale);
	}
	
	@RequestMapping("/infoList")
	public void infoList(TourInfoVO loc, Model model, Locale locale) throws Exception {
			//locale 정보
			loc.setTi_lang(locale.toString());
			String tempLoc = loc.getSlocation();
			List<TourInfoVO> lists = tgService.getInfos(loc);
			model.addAttribute("lists", lists);
			
			if(loc.getSlocation() != null){
				model.addAttribute("slocation", tempLoc);
			}
			else {
				model.addAttribute("sWord", loc.getsWord());
			}
	}
	
	@RequestMapping("/infoDetail")
	public void infoDetail(TourInfoVO info, Model model) throws Exception {
		model.addAttribute("ti_no", info.getTi_no());
		if(info.getsWord() == "" || info.getsWord() == null) {
			model.addAttribute("check", "check");
			model.addAttribute("pWord", info.getSlocation());
		}
		else{
			model.addAttribute("pWord", info.getsWord());
		}
		model.addAttribute(tgService.getInfo(info.getTi_no()));
	}
	
	@RequestMapping("findRoute")
	public void findRoute(@ModelAttribute TourInfoVO tour, Model model, Locale locale) {
		System.out.println("aaaaaaaaaaaaaaaaaaaaaaaa"+locale);
		model.addAttribute(locale);
	}
}






