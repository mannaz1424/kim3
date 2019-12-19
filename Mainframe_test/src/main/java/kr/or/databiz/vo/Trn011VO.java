package kr.or.databiz.vo;

import java.sql.Timestamp;
import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Trn011VO {
	private String pcode         ;
	private int hideseq          ;
	private int subseq           ;
	private int lineno           ;
	private String linetype      ;
	private String prodcode      ;
	private String prodname      ;
	private int amount           ;
	private String unitunit      ;
	private int unitprice        ;
	private int unitcost         ;
	private int subtotal         ;
	private int subctotal        ;
	private int subbenef         ;
	private int subtax           ;
	private Timestamp recmade    ;
	private Timestamp recupdate  ;
	private int shipment_amount  ;

}
