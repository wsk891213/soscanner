package com.finalproject.soscanner.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.soscanner.mapper.FaqMapper;
import com.finalproject.soscanner.vo.FaqPageVO;
import com.finalproject.soscanner.vo.FaqVO;

@Service("faqService")
public class FaqServiceImpl implements FaqService {

	@Autowired
	private FaqMapper faqMapper;
	
	@Override
	public List<FaqVO> selectFaq(FaqPageVO page) throws Exception {
		return faqMapper.selectFaq(page);
	}

	@Override
	public int selectPage(FaqPageVO page) throws Exception {
		return faqMapper.selectPage(page);
	}
	
	

}
