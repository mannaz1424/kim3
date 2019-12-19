package kr.or.databiz.vo;

import java.sql.Timestamp;
import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mtrn100VO {
	private String trntype      ;
	private int trnym           ;
	private String pcode        ;
	private int total           ;
	private int result          ;
	private int discount        ;
	private int fee             ;
	private int tax             ;
	private int control         ;
	private int intotal         ;
	private int zan             ;
	private int count1          ;
	private int count2          ;
	private int trnyear         ;
	private int trnmonth        ;
	private Timestamp recupdate ; 
	private Timestamp recmade   ;

}
