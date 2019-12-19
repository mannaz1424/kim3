package kr.or.databiz.service;

import java.util.HashMap;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.databiz.mapper.TrnMapper;
import kr.or.databiz.vo.Trn010VO;


@Service
@Transactional
public class TrnService {
	
	@Autowired
	TrnMapper trnMapper;

	public Trn010VO getTrn010(String pcode, int hideSeq) {
		
		return trnMapper.getTrn010(pcode, hideSeq);
	}
}
