package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Trn012VO {
	private String pcode          ;
	private int hideseq           ;
	private int subseq            ;
	private String note1          ;
	private String note2          ;
	private String sendtype       ;
	private String sendname       ;
	private String sendkana       ;
	private String sendzip        ;
	private String sendaddr1      ;
	private String sendaddr2      ;
	private String sendtel        ;
	private Timestamp senddate    ;
	private String sendtime       ;
	private String invoicecode    ;
	private String referno        ;
	private String invoice        ;
	private String delivery       ;
	private String shiptype       ;
	private String sendflg        ;
	private Timestamp recmade     ;
	private Timestamp recupdate   ;
	private String note2_content  ;
	private String appno          ;

}
