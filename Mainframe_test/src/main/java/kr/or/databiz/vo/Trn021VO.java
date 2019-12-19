package kr.or.databiz.vo;

import java.sql.Timestamp;
import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Trn021VO {
	private String pcode        ;
	private int hideseq         ;
	private int lineno          ;
	private String linetype     ;
	private Timestamp trndate   ;
	private Timestamp inputdate ;
	private int subtotal        ;
	private String note         ;
	private Timestamp recmade   ;
	private Timestamp recupdate ;
   
}
