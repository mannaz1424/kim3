package springweb.a03_data.dao;

import org.springframework.stereotype.Repository;

import springweb.a03_data.vo.Resource;

@Repository
public interface A06_GanttDao {
// INSERT INTO resource01 values(1,'tmp_0','개발자0')
	public void insertResource(Resource ins);
}
