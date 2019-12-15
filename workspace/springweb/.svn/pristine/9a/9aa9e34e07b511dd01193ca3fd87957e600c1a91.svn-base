package springweb.a03_data.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import springweb.a03_data.service.A04_BoardService;
import springweb.a03_data.vo.Board;
import springweb.a03_data.vo.BoardSch;

@Controller
// controller의 공통적인 url mapping 주소 선언..
// http://localhost:7080/springweb/board.do?method=list
@RequestMapping("/board.do")
public class A04_BoardCtrl {
	@Autowired(required=false)
	private A04_BoardService service;
	// /board.do?method=list
	// 위에 공통적인 url 주소와 연결하여 기능적으로 추가하는 url 주소를 선언하여 사용할 수 있다.
	// http://localhost:7080/springweb/board.do?method=list
	// http://localhost:7080/springweb/board.do?method=insert
	// ModelAttribute("bsch") : 화면(view)에 보낼 객체(BoardSch-bsch)와 요청값을 처리할 
	//   객체(BoardSch)
	@RequestMapping(params="method=list")
	public String list(@ModelAttribute("bsch") BoardSch sch, Model d) {
		// BoardSch : 요청값 처리 및 검색데이터 조회화면에 출력(model+요청)
		// Model : 화면에 list할 데이터 처리를 위한 model 선언..
		//System.out.println(sch.getTitle());
		//System.out.println(sch.getWriter());
		d.addAttribute("blist", service.boardList(sch));
		
		return "WEB-INF\\view\\a03_data\\c01_boardList.jsp";
	}
	@RequestMapping(params="method=ajaxlist")
	public String ajaxlist(@ModelAttribute("bsch") BoardSch sch, Model d) {
		// BoardSch : 요청값 처리 및 검색데이터 조회화면에 출력(model+요청)
		// Model : 화면에 list할 데이터 처리를 위한 model 선언..
		//System.out.println(sch.getTitle());
		//System.out.println(sch.getWriter());
		d.addAttribute("blist", service.boardList(sch));
		
		return "pageJsonReport";
	}	
	// method=insert
	// 1. 초기 등록하는 양식 화면
	// 2. 등록된 양식에 데이터를 입력해서 전송을 통해서 데이터 등록 처리..(process)
	// 3. 답글 등록 양식/답글처리 프로세스
	
	@RequestMapping(params="method=insert")
	public String insert(@ModelAttribute("board") Board ins) {
		System.out.println("답글번호:"+ins.getRefno());
		// DB 입력 처리..데이터를 입력시 처리..: 원래 답글에는 no가 있기 때문에 구분처리.
		// ins.getNo()==0 는 답글 형식을 호출하는 처리가 아닙을 나타낸다.
		// 1. 초기 등록 양식에서 글등록을 클릭했거나.
		// 2. 답글 양식에서 답글을 등록(전송)을 했을 때 처리..
		if(ins.getNo()==0 && ins.getTitle()!=null) {
			service.boardInsert(ins);
		}
		return "WEB-INF\\view\\a03_data\\c02_boardInsert.jsp";
	}
	@ResponseBody
	@RequestMapping(params="method=insertAjax")
	public String insertAjax(Board ins, Model d) {
		System.out.println("답글번호:"+ins.getRefno());
		// DB 입력 처리..데이터를 입력시 처리..: 원래 답글에는 no가 있기 때문에 구분처리.
		// ins.getNo()==0 는 답글 형식을 호출하는 처리가 아닙을 나타낸다.
		// 1. 초기 등록 양식에서 글등록을 클릭했거나.
		// 2. 답글 양식에서 답글을 등록(전송)을 했을 때 처리..
		if(ins.getNo()==0 && ins.getTitle()!=null) {
			List<Map<String, Object>> listIf =  service.boardInsert(ins);
			if(listIf!=null &&listIf.size()>0) d.addAttribute("JSON_OBJECT", listIf);
		}
		
		return "success";
	}	
	// view단에서 요청된 uri형식 : board.do?method=detail&no=1
	@RequestMapping(params="method=detail")
	public String detail(@RequestParam("no") int no, Model d) {
		System.out.println("상세화면 no:"+no);
		
		//Board detail =service.getBoard(no);
		//System.out.println("DB에서 온데이터:"+detail.getTitle());
		//System.out.println("DB에서 온데이터:"+detail.getWriter());
		d.addAttribute("board", service.getBoard(no));
		
		// redirect:/board.do?method=list 다시 list 호출
		return "WEB-INF\\view\\a03_data\\c03_boardDetail.jsp";
	}
	@RequestMapping(params="method=detailAjax")
	public String detailAjax(@RequestParam("no") int no, Model d) {
		System.out.println("상세화면 no:"+no);
		
		//Board detail =service.getBoard(no);
		//System.out.println("DB에서 온데이터:"+detail.getTitle());
		//System.out.println("DB에서 온데이터:"+detail.getWriter());
		d.addAttribute("board", service.getBoard(no));
		
		// redirect:/board.do?method=list 다시 list 호출
		return "pageJsonReport";
	}	

	@RequestMapping(params="method=updateAjax")
	public String updateAjax(Board update, Model d) {
//		System.out.println("no:"+update.getNo());
//		System.out.println("title:"+update.getTitle());
		d.addAttribute("board", service.updateBoard(update));
		return "pageJsonReport";
	}
	@RequestMapping(params="method=update")
	public String update(Board update, Model d) {
//		System.out.println("no:"+update.getNo());
//		System.out.println("title:"+update.getTitle());
		d.addAttribute("board", service.updateBoard(update));
		return "WEB-INF\\view\\a03_data\\c03_boardDetail.jsp";
	}	
	@RequestMapping(params="method=delete")
	public String delete(@RequestParam("no") int no) {
		System.out.println("삭제할 번호:"+no);
		service.deleteBoard(no);
		// return "forward:/board.do?method=detail";
		// 삭제 후에는 조회 list로 이동..
		return "redirect:/board.do?method=list";
	}
	@RequestMapping(params="method=deleteAjax")
	public String deleteAjax(@RequestParam("no") int no) {
		System.out.println("삭제할 번호:"+no);
		service.deleteBoard(no);
		// return "forward:/board.do?method=detail";
		// 삭제 후에는 조회 list로 이동..
		return "redirect:/board.do?method=list";
	}	
	// ex) 상세화면에서 첨부 파일을 클릭시, 파일명을 전송하여 해당 메서드를 통해서
	// 파일이 다운로드 되게 처리하세요
	@RequestMapping(params="method=download")
	public String download(@RequestParam("fname") String fname, Model d ) {
		d.addAttribute("downloadFile", fname);
		return "downloadViewer";
	}
	
	
	
	/// EX) 항목 클릭시, 상세 화면 호출 처리.
	
	
	/*	
# 게시판 개발
0. 주요 기능
	1) 무한 레벨 답변형 게시판(계층형)
	2) 파일업로드(자료첨부처리)
	3) 엑셀 및 pdf 다운로드 처리.
	4) 글등록/수정/삭제/답변글등록 
	5) 페이징 처리
1. database 설계
	1) 사용하게 될 list 정리 - 컬럼 
	 	테이블 작성, sequence 작성.
	2) 사용하게 될 sql 정리
	 	- 기본 테이블:조회문, 등록, 수정, 삭제
	 	- 답변형 처리 조회문 작성.(계층형 sql)
2. 기본 VO와 DAO 작성	
 	
3. 1차 기본 list service, conroller 구현
	dao --> serice --> controller
4. 1차 view단 (테이블 list)
	model 설정,
	조회화면 list

5. 등록 처리
	1) 화면처리..
	2) 파일업로드 
6. 게시글 상세화면 처리..
	1) 수정,삭제
	2) 답글 달기 처리
7. 메인화면에서 계층형 sql로 리스트
8. paging 처리	
9. 엑셀 및 pdf 다운로드 처리..
	
	
	*/	
	
}
