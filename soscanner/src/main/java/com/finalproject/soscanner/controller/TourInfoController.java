package com.finalproject.soscanner.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.finalproject.soscanner.service.TourGuideService;
import com.finalproject.soscanner.vo.TourInfoVO;

@RequestMapping("/tourGuide")
@Controller
public class TourInfoController {
	
	@Autowired
	private TourGuideService tgService;
	
	@RequestMapping("/seoulDiv")
	public void map() {
		
	}
	
	@RequestMapping("/tourInfo")
	public List<TourInfoVO> tourInfo(@RequestParam("location") String location) throws Exception {
		tgService.getTourInfoList(location);
		
		
		return null;
	}
}
