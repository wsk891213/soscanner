package com.finalproject.soscanner.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finalproject.soscanner.service.FaqService;

@Controller
@RequestMapping("faq")
public class FaqController {

	@Autowired
	private FaqService faqService;
	
	  @RequestMapping("**/favicon.ico")
	    public String favicon() {
	        return "forward:/resources/img/fav.ico";
	    }


	
	@RequestMapping("/faq")
	public void list(Model model) throws Exception {
		model.addAttribute("faq", faqService.selectFaq());
	}
}
