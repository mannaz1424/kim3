package kr.or.databiz.service;

import java.util.HashMap;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.databiz.mapper.MstMapper;
import kr.or.databiz.mapper.TrnMapper;
import kr.or.databiz.vo.Mst030VO;
import kr.or.databiz.vo.Trn010VO;


@Service
@Transactional
public class MstService {
	
	@Autowired
	MstMapper mstMapper;

	public Mst030VO getMst030(String code) {
		
		return mstMapper.getMst030(code);
	}
	
	public List<Mst030VO> listMst030() {
		
		return mstMapper.listMst030(0, 0);
	}
}
