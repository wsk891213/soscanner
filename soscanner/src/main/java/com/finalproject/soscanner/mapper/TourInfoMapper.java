package com.finalproject.soscanner.mapper;

import java.util.List;

import com.finalproject.soscanner.vo.TourInfoVO;

public interface TourInfoMapper {
	public List<TourInfoVO> getInfos(String location) throws Exception;
	public List<TourInfoVO> getsInfo(String sWord) throws Exception;
	public TourInfoVO getInfo(int no) throws Exception;
}
