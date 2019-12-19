package kr.or.databiz.vo;

import java.sql.Timestamp;
import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Trn210VO {
	private String codetype      ;
	private Timestamp trndate    ;
	private String code          ;
	private int subtotal         ;
	private int discount         ;
	private int fee              ;
	private int subtax           ;
	private int control          ;
	private int intotal          ;
	private int total            ;
	private Timestamp recmade    ;
	private Timestamp recupdate  ;

}
