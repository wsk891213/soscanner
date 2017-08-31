package com.finalproject.soscanner.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@RequestMapping("/infoList")
	public void infoList(TourInfoVO loc, Model model) throws Exception {
		List<TourInfoVO> lists = tgService.getInfos(loc);
		model.addAttribute("lists", lists);
	}
	
	@RequestMapping("/infoDetail")
	public void infoDetail(@RequestParam("ti_no") int no, Model model) throws Exception {
		model.addAttribute(tgService.getInfo(no));
	}
	
	@RequestMapping("findRoute")
	public void findRoute(@ModelAttribute TourInfoVO tour, Model model) {
		logger.info(tour.getTi_mapx());
		logger.info(tour.getTi_mapy());
	}
}






