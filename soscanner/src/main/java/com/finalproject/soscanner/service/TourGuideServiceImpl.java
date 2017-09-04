package com.finalproject.soscanner.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.soscanner.mapper.TourInfoMapper;
import com.finalproject.soscanner.vo.TourInfoVO;

@Service
public class TourGuideServiceImpl implements TourGuideService{
	
	@Autowired
	private TourInfoMapper mapper;
	
	@Override
	public List<TourInfoVO> getInfos(TourInfoVO loc) throws Exception {
		if(loc.getsWord() == null){
			return mapper.getInfos(loc.getSlocation());
		}
		else {
			return mapper.getsInfo(loc.getsWord());
		}
	}

	@Override
	public TourInfoVO getInfo(int no) throws Exception {
		return mapper.getInfo(no);
	}
	
}













