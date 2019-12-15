package springweb.a01_start;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import springweb.a03_data.vo.Filevo;
/* 파일 업로드와 다운로드 */
@Controller
public class A07_FileCtrl {
	// 초기 화면 로딩..
	@RequestMapping("/upload.do")
	public String upload() {
		return "WEB-INF\\view\\a01_start\\b01_uploadExp.jsp";
	}
	// input type="file" name="report"로 된 내용은..
	//  MultipartFile객체로 받을 수 있다. (스트림으로 해당 파일을 받은 상황)
	@RequestMapping("/upload2.do")
	public String upload2(@RequestParam("report") MultipartFile report) {
		// getOriginalFilename() 넘겨온 파일  ==> File 객체로 변환 처리하여,
		// 특정한 위치에  저장 처리..
		// service단에서 처리할 내용..
		// 1. 저장할 경로를 지정(가상 폴드 설정), 파일 명 저장.
		// 2. 경로와 파일명으로 File객체를 만들어서, 해당 File객체로 저장 처리..
		// 3. 임시 폴드에 있는 파일을 현재 springweb 하위에 특정 폴드로 복사 처리..	
		
		System.out.println("받은 파일명:"+report.getOriginalFilename());
		// 1. 저장할 경로를 지정(가상 폴드 설정), 파일 명 저장.
		String fname = report.getOriginalFilename();
		String path = "C:\\z01_web\\workspace\\springweb\\WebContent\\i01_upload\\";
		String tmpath = "C:\\z01_web\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\springweb\\i01_upload\\";
		// 2. 경로와 파일명으로 File객체를 만들어서, 해당 File객체로 저장 처리..		
		
		File tmpFile = new File(tmpath+fname);
		File file = new File(path+fname);
		// 3. 임시 폴드에 있는 파일을 현재 springweb 하위에 특정 폴드로 복사 처리..			
		try {
			// 1) Stream report는 network를 통해서 받은 stream 객체.
			// 2) 스프림객체.transferTo(파일객체) : 전환처리.

			report.transferTo(tmpFile);
			Files.copy(tmpFile.toPath(), file.toPath());
			System.out.println("파일 전송 및 저장 완료!!");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return "WEB-INF\\view\\a01_start\\b01_uploadExp.jsp";
	}	

	
	
	/*	
# 파일 업로드 처리..
1. spring에서 지원하는 CommonsMultipartResolver를 bean으로 선언한다.
	(파일 업로드 뷰리졸버 선언 - dispatcher-servlet.xml)
2. jsp(뷰)에서 
	1) <input type="file"로 선언.
	2) 요소객체를 포함하는 form에 속성 enctype에 속성값 multipart/form-data
	로 선언하여야 한다.
	3) submit를 했을 때..
3. 파일을 웹에서 stream 받는 객체를 선언..
   Controller단에서 MultipartFile를 통해서 받는다.
4. service단에서 파일을 받은 정보를 stream객체를 처리하여 서버에 특정한 위치에
	저장 처리를 한다( new File() 객체를 통해서  파일을 받아서, 
	지정된 위치로 복사 처리)
# 파일 다운로드 처리..
	*/
    // ex) upload3를 통해서 파일 업로드 화면과, 전송처리되게 하세요..
	@RequestMapping("/upload3.do")
	public String upload3(Filevo vo) {
		// 초기화면과 파일을 등록했을 때를 구분하여 처리..
		if(vo.getReport()!=null) {
			System.out.println("Name:"+vo.getName());
			for(MultipartFile report:vo.getReport()) {
			
				String fname = report.getOriginalFilename();
				System.out.println("fname:"+fname);
				String path = "C:\\z01_web\\workspace\\springweb\\WebContent\\i01_upload\\";
				String tmpath = "C:\\z01_web\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\springweb\\i01_upload\\";
				File file = new File(path+fname);
				File tmpFile = new File(tmpath+fname);
				try {
					report.transferTo(tmpFile);
					Files.copy(tmpFile.toPath(), file.toPath());
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					System.out.println(e.getMessage());
				}catch(Exception e) {
					System.out.println(e.getMessage());
				}
			}
		}
		return "WEB-INF\\view\\a01_start\\b02_uploadExp.jsp";
	}	
	/*
	# 파일 다운로드 처리..
	1. lib 등록되어 있어야되고(spring 지원 기본)
	2. DownloadViewer를 선언하여 처리 dispatch-servlet.xml에서 
	3. controller에 urlmapping으로 매서드 선언..
	4. return 다운 로드 뷰를 호출 처리..  
	*/
	@RequestMapping("/fileDownForm.do")
	public String fileDownForm() {
		return "WEB-INF\\view\\a01_start\\c01_uploadDown.jsp";
	}
	/* 		
	# 다운로드처리할 process
	1. 해당 파일명과 함께 서버에 다운로드 controller에 전달..
	2. controller에서는 해당 파일을 받아서, model로 데이터 설정.
	3. 사용자 정의 다운로드처리(downloadviewer- dispatcherservlet에 등록된 것)
	4. 사용자 정의 다운로드 viewer에서는 model로 해당 내용으로 jsp에서 지원하는 다운처리 모듈로 
		처리함..
	 */		
	
	@RequestMapping("/fileDown.do")
	public String fileDown(@RequestParam("fname") String fname, Model d ) {
		System.out.println("다운로드 파일:"+fname);
		// viewer에 보낼 model데이터 설정..
		d.addAttribute("downloadFile", fname);
		// downloadViewer 를 선언하여 호출..
		return "downloadViewer"; // dispatcher-servlet에 있는 설정된 bean 이름 호출..downloadViewer
	}	
	
	
	
}
