package com.finalproject.soscanner.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RequestMapping("/tourGuide")
@Controller
public class TourInfoController {
	
	@RequestMapping("/seoulDiv")
	public void map() {
		
	}
	
	@RequestMapping("/tourInfo")
	public void tourInfo(@RequestParam("location") String location) {
		System.out.println(location);
	}
}
