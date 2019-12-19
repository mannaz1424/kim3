package kr.or.databiz.vo;

import java.sql.Timestamp;
import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Trn020VO {
	private String pcode          ;
	private int hideseq           ;
	private String custcode       ;
	private String staffcode      ;
	private int total             ;
	private String note           ;
	private Timestamp recmade     ;
	private Timestamp recupdate   ;
	private String kbn01          ;
	private String kbn02          ;

}
