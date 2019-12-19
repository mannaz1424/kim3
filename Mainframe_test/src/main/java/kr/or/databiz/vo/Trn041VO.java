package kr.or.databiz.vo;

import java.sql.Timestamp;
import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Trn041VO {
	private String pcode        ;
	private int hideseq         ;
	private int lineno          ;
	private int linetype        ;
	private String prodcode     ;
	private int amount          ;
	private String stkcode      ;
	private String note         ;
	private Timestamp recmade   ;
	private Timestamp recupdate ;

}
