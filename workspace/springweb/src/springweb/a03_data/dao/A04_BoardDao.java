package springweb.a03_data.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import springweb.a03_data.vo.Board;
import springweb.a03_data.vo.BoardSch;
// springweb.a03_data.dao.A04_BoardDao
// public ArrayList<Board> boardList(BoardSch sch);
@Repository
public interface A04_BoardDao {
	
	public int totCnt(BoardSch sch);
	// ex)
	// dao, 기본 vo등록, BoardMapper.xml
	
	// select * from board; 설정.
	public ArrayList<Board> boardList(BoardSch sch);
	// ex) 등록 처리 dao, mapper.xml, service, controller
	public void boardInsert(Board ins);
	// 첨부파일 생성.
	public void insertBoardFile(String fname);
	
	
	
	// 조회시 마다, 조회 카운트 업!!
	
	
	public void uptReadCnt(int no);
	// 상세 조회..
	public Board getBoard(int no);
	// 파일 가져오기.
	
	public ArrayList<String> getFiles(int no);
	
	
	
	// 수정 처리..
	public void updateBoard(Board update);
	// 삭제 처리.
	public void deleteBoard(int no);
	// ex) 수정 처리...
	/*	
	update board
	  set title=@@,
	  	  readcnt=readcnt+1,
	  	  writer=@@,
	  	  uptdte=sysdate,
	  	  content=@@,
	  where no = ###
	*/	

	
	
	
}
