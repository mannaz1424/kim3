package kr.or.databiz.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.databiz.mapper.TestMapper;
import kr.or.databiz.vo.TestVO;



public interface TestService{
	
	public List<TestVO> accounts();
}
