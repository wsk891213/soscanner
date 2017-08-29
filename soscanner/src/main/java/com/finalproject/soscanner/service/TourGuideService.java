package com.finalproject.soscanner.service;

import java.util.List;

import com.finalproject.soscanner.vo.TourInfoVO;

public interface TourGuideService {
	public List<TourInfoVO> getInfos(TourInfoVO loc) throws Exception;
	public TourInfoVO getInfo(int no) throws Exception;
}
