package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst002VO {
	private String code           ;
	private String name           ;
	private String kana           ;
	private String assign         ;
	private String note           ;
	private Timestamp startdate   ;
	private String disabled       ;
	private Timestamp recmade     ;
	private Timestamp recupdate   ;
	private String login_pw       ;
	private String authority      ;
	private String branchcode     ;
	private String teamcode       ;
	private Timestamp enddate     ;

}
