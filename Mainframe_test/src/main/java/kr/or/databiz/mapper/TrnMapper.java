package kr.or.databiz.mapper;


import org.apache.ibatis.annotations.Mapper;
import kr.or.databiz.vo.Trn010VO;


@Mapper
public interface TrnMapper {
	
	public Trn010VO getTrn010(String pcode, int hideSeq);
}
