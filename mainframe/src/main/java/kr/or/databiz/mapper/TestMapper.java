package kr.or.databiz.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import kr.or.databiz.vo.TestVO;


@Mapper
public interface TestMapper {
	public List<TestVO> accounts();
}
