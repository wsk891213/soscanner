package com.finalproject.soscanner.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.finalproject.soscanner.service.TourGuideService;

@RequestMapping("/tourGuide")
@Controller
public class TourInfoController {
	
	@Autowired
	private TourGuideService tgService;
	
	@RequestMapping("/seoulDiv")
	public void map() {
		
	}
	
	@RequestMapping("/tourInfo")
	public void tourInfo(@RequestParam("location") String location) {
		
		System.out.println(location);
		
		
	}
}
