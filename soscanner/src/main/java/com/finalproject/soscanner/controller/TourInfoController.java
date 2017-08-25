package com.finalproject.soscanner.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finalproject.soscanner.service.TourGuideService;
import com.finalproject.soscanner.vo.TourInfoVO;

@RequestMapping("/tourGuide")
@Controller
public class TourInfoController {
	
	private static final Logger logger = LoggerFactory.getLogger(TourInfoController.class);
	
	@Autowired
	private TourGuideService tgService;
	
	@RequestMapping("/seoulDiv")
	public void map() {
		
	}
	
	@RequestMapping("/tourInfo")
	public List<TourInfoVO> tourInfo(TourInfoVO loc) throws Exception {
		System.out.println(loc.getSlocation());
		List<TourInfoVO> list = tgService.getTourInfoList(loc);
		
		return null;
	}
}
