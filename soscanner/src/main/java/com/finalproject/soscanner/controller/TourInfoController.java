package com.finalproject.soscanner.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finalproject.soscanner.service.TourGuideService;
import com.finalproject.soscanner.vo.TourInfoVO;

@RequestMapping("/tourGuide")
@Controller
public class TourInfoController {
	
	private static final Logger logger = LoggerFactory.getLogger(TourInfoController.class);
	
	@Autowired
	private TourGuideService tgService;
	
	@RequestMapping("/seoulMap")
	public void seoulMap() {
	}
	
	@RequestMapping("/tourInfo")
	public void tourInfo(TourInfoVO loc, Model model) throws Exception {
		System.out.println(loc.getSlocation());
		List<TourInfoVO> lists = tgService.getTourInfoList(loc);
		model.addAttribute("lists", lists);
	}
}
