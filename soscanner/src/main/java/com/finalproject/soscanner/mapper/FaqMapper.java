package com.finalproject.soscanner.mapper;

import java.util.List;

import com.finalproject.soscanner.vo.FaqPageVO;
import com.finalproject.soscanner.vo.FaqVO;

public interface FaqMapper {
	public List<FaqVO> selectFaq(FaqPageVO page) throws Exception;
	
	// ∆‰¿Ã¬°
	public int selectPage(FaqPageVO page) throws Exception;
}
