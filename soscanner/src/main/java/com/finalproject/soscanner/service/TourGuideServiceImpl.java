package com.finalproject.soscanner.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.soscanner.mapper.TourInfoMapper;
import com.finalproject.soscanner.vo.LanguageDATA;
import com.finalproject.soscanner.vo.TourInfoVO;

@Service
public class TourGuideServiceImpl implements TourGuideService{
	
	@Autowired
	private TourInfoMapper mapper;
	
	@Override
	public List<TourInfoVO> getInfos(TourInfoVO loc) throws Exception {
		if(loc.getsWord() == null){
			LanguageDATA langData = new LanguageDATA();
			System.out.println(loc.getSlocation());
			System.out.println(loc.getTi_lang());
			System.out.println("---------------------------------------------------");
			switch (loc.getTi_lang()) {
			case "en":
				loc.setSlocation(langData.getEng_map().get(loc.getSlocation()));
				break;
			case "zh":
				loc.setSlocation(langData.getCh_map().get(loc.getSlocation()));
				break;
			}
			return mapper.getInfos(loc);
		}
		else {
			
			return mapper.getsInfo(loc);
		}
	}

	@Override
	public TourInfoVO getInfo(int no) throws Exception {
		
		return mapper.getInfo(no);
	}
	
}













