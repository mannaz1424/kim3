package kr.or.databiz.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.databiz.mapper.TestMapper;
import kr.or.databiz.vo.TestVO;


@Service
@Transactional
public class TestServiceImple implements TestService {
	
	@Autowired
	TestMapper testMapper;

	public List<TestVO> accounts() {
		return testMapper.accounts();
	}
}
