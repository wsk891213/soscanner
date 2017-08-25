package com.finalproject.soscanner.service;

import java.util.List;

import com.finalproject.soscanner.vo.TourInfoVO;

public interface TourGuideService {
	public List<TourInfoVO> getTourInfoList(TourInfoVO loc) throws Exception;
}
