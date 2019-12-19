package kr.or.databiz.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.databiz.service.MstService;
import kr.or.databiz.service.TrnService;
import kr.or.databiz.vo.Mst030VO;
import kr.or.databiz.vo.ResponseVO;
import kr.or.databiz.vo.Trn010VO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/comm/*")
public class CommonController<T> {

	@Autowired
	private TrnService trnService;
	
	@Autowired
	private MstService mstService;

	@Value("${spring.profile.value}")
	private String profile;
	
	@RequestMapping(value="trn010", method=RequestMethod.GET, produces="application/json" )
	public @ResponseBody ResponseVO<T> getTtn010(HttpServletRequest request) {
		HashMap<String, Object> map = new HashMap<>();

		//log.debug("model=" + model.toString());
		
		Trn010VO vo = trnService.getTrn010("001", 1646);
		log.debug(vo.toString());
		log.debug("==>" + vo.getCod_kbn() + "]");
		
		
		map.put("hello", vo);
		
		map.put("name", "sung");
		
		List<Trn010VO> aa = new ArrayList<>();
		aa.add(vo);
		aa.add(vo);
	
		
		ResponseVO<T> ret = new ResponseVO();
		ret.setResponse((T) aa);
		
		
		

		return ret;
	}
	
	
	@RequestMapping(value="mst030", method=RequestMethod.GET, produces="application/json" )
	public @ResponseBody ResponseVO mst030(HttpServletRequest request) {
		
		//HashMap<String, Object> map = new HashMap<>();

		//log.debug("model=" + model.toString());
		
		Mst030VO vo = mstService.getMst030("000403");
		log.debug(vo.toString());
		
		
		ResponseVO<T> ret = new ResponseVO();
		ret.setResponse((T) vo);
		

		return ret;
	}
	
	@RequestMapping(value="mst030s", method=RequestMethod.GET, produces="application/json" )
	public @ResponseBody ResponseVO mst030s(HttpServletRequest request) {
		
		//HashMap<String, Object> map = new HashMap<>();

		//log.debug("model=" + model.toString());
		
		List<Mst030VO> vo = mstService.listMst030();
		
		
		
		ResponseVO<T> ret = new ResponseVO();
		ret.setCount(vo.size());
		ret.setResponse((T) vo);
		

		return ret;
	}

}
