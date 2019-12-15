package springweb.v01_viewer;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;
// springweb.v01_viewer.DownloadViewer
public class DownloadViewer extends AbstractView{
	// 기본 파일다운로등 경로명 가져오기..
	@Value("${upload}")
	private String upload;
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, 
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		// 1. controller에서 전달되어온 파일명으로 파일객체에 할당.. downloadFile
		String fname = (String)model.get("downloadFile");
		File file = new File(upload+fname);
		System.out.println("## viewer에 오신 것을 환영합니다 ##");
		System.out.println("전체파일명:"+file.getPath());
		System.out.println("파일명:"+file.getName());
		System.out.println("파일의 길이:"+(int)file.length());
		// 2. 다운로드 처리 가능한 content type으로 설정..	
		response.setContentType("application/download; charset=utf-8;");
		// 3. 파일의 길이 설정.
		response.setContentLength((int)file.length());
		// 4. 파일명 encoding 설정..- 
		//	1) 전송을 위해 encoding하고,설정 처리..encoding시 공백 문자(+) ==> " "
		fname = URLEncoder.encode(fname,"utf-8").replaceAll("\\+", " ");
		response.setHeader("Content-Disposition", "attachment;filename=\""+fname+"\"");
		//  2) encoding된 파일을 binary데이터로 전송..
		response.setHeader("Content-Transfer-Encoding", "binary");
		// 5. 파일에 대한 처리..(Stream객체로 전달처리)
		OutputStream out = response.getOutputStream();
		//  	1) File객체를 network을 통해서 전송하기 위하여 FileInputStream 객체로 전환하여 처리한다.
		FileInputStream fis = new FileInputStream(file);
		//      2) inputstream(읽어오는 객체) --> outstream(적거나 보내는 객체) : FileCopyUtils
		FileCopyUtils.copy(fis, out);
		//        로 처리한다.
		//      3) out.flush()처로 전송완료 처리.
		out.flush();
	}
	
}
/*
# viewer
1. 기본 추상 view에서 상속 처리..AbstractView
2. head부분에 설정을 download로 한글파일로 설정되게 처리..
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 와 같이 다운로드 할 수 있는 content로
	<meta http-equiv="Content-Type" content="application/download; charset=UTF-8">로 변경 처리
 	설정하여야 한다.
3. 파일을 다운로드 할 수 있는 정보를 설정.
 	1) 파일명과 파일명에 대한 한글처리에 대한 encoding 방식..
 		URLEncoder.
 	2) 파일의 용량과 크기
 		head부분에서 Content-length 속성으로 파일의 길이로 설정..
 	3) 파일의 위치
 		기준 위치에서 Content-Disposition 속성에  attachment;filename=파일이름.
 	4) response.getOutputStream()를 파일로 변환로 하여 해당 파일을 출력 처리하여야 한다.
*/









