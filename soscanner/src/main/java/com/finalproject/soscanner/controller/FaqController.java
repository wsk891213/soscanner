package com.finalproject.soscanner.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finalproject.soscanner.service.FaqService;
import com.finalproject.soscanner.vo.FaqPageResultVO;
import com.finalproject.soscanner.vo.FaqPageVO;

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
	public void list(Model model, FaqPageVO page) throws Exception {
		int pageNo = page.getPageNo();
		int count = faqService.selectPage(page);
		model.addAttribute("page", count);
		model.addAttribute("faq", faqService.selectFaq(page));
		model.addAttribute("pageResult", new FaqPageResultVO(pageNo, count));
	}
}
