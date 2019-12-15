package springweb.a03_data.service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.InputStreamResource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import springweb.a03_data.dao.A04_BoardDao;
import springweb.a03_data.vo.Board;
import springweb.a03_data.vo.BoardSch;

@Service
public class A04_BoardService {
	@Autowired(required=false)
	private A04_BoardDao dao;
	public ArrayList<Board> boardList(BoardSch sch){
		// 1. 데이터 총건수..
		sch.setCount(dao.totCnt(sch));
		// 2. 화면에 한번에 보여줄 데이터 건수..
		if(sch.getPageSize()==0) {
			sch.setPageSize(5);
		}
		System.out.println("총데이터 건수:"+sch.getCount());
		// 3. 총 페이지 수
		System.out.println("총페이지수:"+(int)Math.ceil(sch.getCount()/(double)sch.getPageSize()));
		sch.setPageCount((int)Math.ceil(sch.getCount()/(double)sch.getPageSize()));
		// 4. 현재 클릭한 페이지 정보..
		if(sch.getCurPage()==0) {
			sch.setCurPage(1);
		}
		if(sch.getCurPage()>sch.getPageCount()) {
			sch.setCurPage(sch.getPageCount());
		}	
		System.out.println("현재 클릭한 페이지 번호:"+sch.getCurPage());
		//  현재페이지 번호, 1
		//  페이지당 보일 데이터 건수  5
		//  화면에 나타날 데이터 rownum(start, end)
		//  1   5   1 2 3 4 5    시작번호:1  마지막번호:5
		//  2   5   6 7 8 9 10  시작번호:6 마지막번호:10
		//  3   5   11 12 13 14 15  시작번호:11 마지막번호:15
		// 마지막 번호?  sch.getCurPage()*sch.getPageSize()
		sch.setStart((sch.getCurPage()-1)*sch.getPageSize()+1);
		
		sch.setEnd(sch.getCurPage()*sch.getPageSize());
		System.out.println("시작번호:"+sch.getStart());
		System.out.println("마지막번호:"+sch.getEnd());
		// 페이지 block 처리..
		// 1) vo 속성 설정(화면호출필요) : blockSize(한번에 보일 block의 크기)
		//      startBlock :시작 block 번호, endBlock 마지막 block번호
		//      
		// 2) 블럭 시작번호와 마지막번호를 저장처리
		// 3) view단에서 처리..
		//    previous [6][7][8][9][10] next 
/*    시작번호 : 1,6,11   마지막번호 5,10,13
 		1  2  3  4  5 ->   blocknum  1
     <- 6  7  8  9 10 ->   blocknum  2
     <-11 12 13            blocknum  3
     <-(previous) 가 나타날 조건 : 시작블럭번호가 블럭의 크기보다 클때..
     ->(next)가 나타날 조건 : 마지막블럭번호가 총페이지수보다 작을 때.
     
     에 대한 처리는 jsp단에서 설정.
     
     
     
 * */
		// # 속성값 설정..
		// 1. 초기 block size(한번에 보일 block 크기) 설정..
		sch.setBlockSize(5);
		// 2. blocknum(블럭의 번호를 통해서 시작/마지막 번호를 가져오게 한다.)
		//    블럭의 번호는  현재페이지/블럭의 크기
		//    1/5, 2/5, 3/5, 4/5, 5/5  ==> 1
		//    6/5, 7/5, 8/5, 9/5, 10/5  ==> 2
		int blocknum = (int)Math.ceil(sch.getCurPage()/(double)sch.getBlockSize());
		// 마지막블럭번호는 블럭의번호*블럭의 크기
		//  단, 마지막블럭번호 전체페이지크기보다는 작아야 한다.
		int endBlock = blocknum*sch.getBlockSize();
		// 마지막블럭번호의 예외로 전체페이지수보다 클때
		sch.setEndBlock(endBlock>sch.getPageCount()?sch.getPageCount():endBlock);
		sch.setStartBlock((blocknum-1)*sch.getBlockSize()+1);
		System.out.println("시작 block번호:"+sch.getStartBlock());
		System.out.println("마지막 block번호:"+sch.getEndBlock());
		
		
		
		
		
		
		
		
		
		return dao.boardList(sch);
	}
	public ArrayList<Board> boardAjaxList(BoardSch sch){
		// 1. 데이터 총건수..
		sch.setCount(dao.totCnt(sch));
		sch.setStart(1);
		sch.setEnd(sch.getCount());
		return dao.boardList(sch);
	}	
	
	public  List<Map<String, Object>> boardInsert(Board ins) {
		// 기본 정보 등록 처리..
		dao.boardInsert(ins);
		// 파일 관련 등록 처리..
		return upLoad(ins);
	}
	/*
	1. 공통 정보에서 파일 업로드 경로 설정된 내용 가져오기..
	2. 파일 업로드 모듈 처리하기.
	3. 파일 업로드 정보 DB에 등록 하기..
		
		upload tmpupload
	*/	
	@Value("${upload}")
	private String upload;
	@Value("${tmpupload}")
	private String tmpupload;
	
	private List<Map<String, Object>> upLoad(Board ins) {
		// 1. 파일 업로드 처리.
		System.out.println("경로1:"+upload);
		System.out.println("경로2:"+tmpupload);
		
		
		List<Map<String, Object>> fileInfoList = new ArrayList<Map<String,Object>>();


		
		for(MultipartFile report: ins.getReport()) {
			System.out.println("파일명:"+report.getOriginalFilename());
			// 1) 파일 이름 가져 오기.
			String fname = report.getOriginalFilename();
			String extName = report.getOriginalFilename().substring(report.getOriginalFilename().lastIndexOf(".")+1 );
			
			// 2) 파일 객체 생성과 할당..
			File tmpFile = new File(tmpupload+fname);
			File file = new File(upload+fname);
			// 3) 요청객체로 온 객체에 임시 파일 객체에 할당.
			try {
				// 화면에서 등록하지 않는 파일은 제외
				if(fname!=null&&!fname.trim().equals("")) {
					// 받은 multipartfile객체를 실제 저장할 파일객체로 변환..
					report.transferTo(tmpFile);
					// 4) 임시 위치에서 웹서버에 구조로 복사 처리..
					Files.copy(tmpFile.toPath(), file.toPath(), StandardCopyOption.REPLACE_EXISTING);
				     Map<String, Object> map = new HashMap<String, Object>();
				     map.put("fieldName", fname);
				     map.put("FilePath", upload);
				     map.put("OriginalFilename", fname);
				     map.put("extName", extName);
				     map.put("FileSize", report.getSize());
				     map.put("FileSavedName", fname);
				     	
				     fileInfoList.add(map);
					
				}
				
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println(e.getMessage());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println(e.getMessage());
			}catch(Exception e) {
				System.out.println("기타 예외 발생:"+e.getMessage());
			}
			// 2. DB 처리
			// 화면에서 등록하지 않는 파일은 제외
			if(fname!=null&&!fname.trim().equals("")) dao.insertBoardFile(fname);
		}
		return fileInfoList;
		
	}
	
	
	// 상세화면 조회시, 
	// 1. 조회수 countup dao
	// 2. 조회 내용 단일 데이터 dao
	public Board getBoard(int no) {
		dao.uptReadCnt(no);
		
		Board one = dao.getBoard(no);
		one.setFnames(dao.getFiles(no));
		System.out.println("파일의 갯수:"+one.getFnames().size());
		
		return one;
	}
	// 수정처리시,
	// 1. 수정 처리 
	// 2. 수정 후, 단일 데이터 조회 
	public Board updateBoard(Board update) {
		dao.updateBoard(update);
		Board one  = dao.getBoard(update.getNo());

		one.setFnames(dao.getFiles(update.getNo()));
		return one;
	}
	public void deleteBoard(int no) {
		dao.deleteBoard(no);
	}
	
}


class MultipartInputStreamFileResource extends InputStreamResource {

    private final String filename;

    MultipartInputStreamFileResource(java.io.InputStream inputStream, String filename) {
        super(inputStream);
        this.filename = filename;
    }

    @Override
    public String getFilename() {
        return this.filename;
    }

    @Override
    public long contentLength() throws IOException {
        return -1; // we do not want to generally read the whole stream into memory ...
    }
}