package kr.or.databiz.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.databiz.vo.Mst030VO;


@Mapper
public interface MstMapper {
	
	public Mst030VO getMst030(String code);
	
	public List<Mst030VO> listMst030(int index, int len);
}
