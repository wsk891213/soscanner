package com.finalproject.soscanner.service;

import java.util.List;

import com.finalproject.soscanner.vo.FaqVO;

public interface FaqService {
	public List<FaqVO> selectFaq() throws Exception;
}
