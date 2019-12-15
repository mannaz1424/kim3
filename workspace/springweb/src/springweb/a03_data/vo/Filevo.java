package springweb.a03_data.vo;

import org.springframework.web.multipart.MultipartFile;

public class Filevo {
	private String name;
	private MultipartFile[] report;
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}

	public MultipartFile[] getReport() {
		return report;
	}

	public void setReport(MultipartFile[] report) {
		this.report = report;
	}

	
}
