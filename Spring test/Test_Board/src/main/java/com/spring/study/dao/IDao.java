package com.spring.study.dao;

import java.util.List;

import com.spring.study.dto.ContentDto;

public interface IDao {
	
	public List<ContentDto> listDao();
	
	
	public List<ContentDto> listDao2(int nEnd, int nStart);
	
	
	
	public void writeDao(String user, String title, 
			             String content, String date);

	public List<ContentDto> contentDao(int num);
	public void deleteDao(int num);
	
	public void hitDao(int num);
	
	public void upNoDao();
	public void downNoDao(int num);
	
	
	// 페이지 관련 Dao
	public Integer totalCountDao();
	
	public void updateDao(int num, String user, String title,
			              String content, String date);
	
}

/*
 * 파라미터 사용방법
 * 
방법1 : param1, param2
	<select>
		select * from 테이블명 where 컬럼=#{param1} and 컬럼=#{param2}
	</select>
방법2 : 0부터 시작하는 인덱스를 사용
	<select>
		select * from 테이블명 where 컬럼=#{0} and 컬럼=#{1}
	</select>
방법3 : 파라미터명을 그대로 사용하기 위해 @Param 어노테이션을 사용

	호출을 가장 먼저 받는 interface 추상메소드 정의시
		public void 함수명(@Param("파라미터명") String 파라미터명, .... )
	Mapper파일에서
		select * from 테이블명 where 필드명=#{파라미터명}
	으로 사용할 수 있다.

 * 
 */