package com.finalproject.soscanner.mapper;

import java.util.List;

import com.finalproject.soscanner.vo.TourInfoVO;

public interface TourInfoMapper {
	public List<TourInfoVO> getTourInfoList(String location) throws Exception;
}
