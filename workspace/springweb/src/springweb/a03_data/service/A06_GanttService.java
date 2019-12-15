package springweb.a03_data.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springweb.a03_data.dao.A06_GanttDao;
import springweb.a03_data.vo.Resource;

@Service
public class A06_GanttService {
	@Autowired(required=false)
	private A06_GanttDao dao;
	
	public void insertResource(ArrayList<Resource> insList) {
		for(Resource rs:insList) {
			dao.insertResource(rs);
		}
	}
}
