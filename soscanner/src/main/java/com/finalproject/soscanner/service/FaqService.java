package com.finalproject.soscanner.service;

import java.util.List;

import com.finalproject.soscanner.vo.FaqPageVO;
import com.finalproject.soscanner.vo.FaqVO;

public interface FaqService {
	public List<FaqVO> selectFaq(FaqPageVO page) throws Exception;
	
	// ∆‰¿Ã¬°
	public int selectPage(FaqPageVO page) throws Exception;
}
