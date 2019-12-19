package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst1011VO {
	private int hideseq          ;
	private String cust_sel_cd   ;
	private String cust_smp_cd   ;
	private String name          ;
	private String kana          ;
	private String zip1          ;
	private String addr11        ;
	private String addr12        ;
	private String telno1        ;
	private String zip2          ;
	private String addr21        ;
	private String addr22        ;
	private String telno2        ;
	private String faxno         ;
	private String telnum        ;
	private String shorttel      ;
	private Timestamp birth      ;
	private String sex           ;
	private String staffcode     ;
	private String disabled      ;
	private String cust_status   ;
	private String dissend_tel   ;
	private String addr1_title   ;
	private String addr2_title   ;
	private String age_kbn       ;
	private String telnum02      ;
	private Timestamp recmade    ;
	private Timestamp recupdate  ;
	private String kubun1        ;
	private String kubun2        ;
	private String kubun3        ;
	private String kubun4        ;
	private String kubun5        ;

}
