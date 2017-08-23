package com.finalproject.soscanner.mapper;

import java.util.List;

import com.finalproject.soscanner.vo.FaqVO;

public interface FaqMapper {
	public List<FaqVO> selectFaq() throws Exception;
}
