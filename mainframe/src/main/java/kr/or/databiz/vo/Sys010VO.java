package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Sys010VO {
	private String sys_kbn  ;
	private String prog_no  ;
	private String prog_id  ;
	private String prog_nm  ;
	private String autho_cd ;
	private String disabled ;
	private String btn_nm   ;

}
