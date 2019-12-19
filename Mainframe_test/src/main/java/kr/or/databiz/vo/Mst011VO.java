package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst011VO {
	private String code               ;
	private int sequence              ;
	private int interval              ;
	private Timestamp nextdate        ;
	private Timestamp true_nextdate   ;
	private Timestamp orderdate       ;
	private String prodcode1          ;
	private int amount1               ;
	private int unitprice1            ;
	private String prodcode2          ;
	private int amount2               ;
	private int unitprice2            ;
	private String prodcode3          ;
	private int amount3               ;
	private int unitprice3            ;
	private String prodcode4          ;
	private int amount4               ;
	private int unitprice4            ;
	private String prodcode5          ;
	private int amount5               ;
	private int unitprice5            ;
	private String prodcode6          ;
	private int amount6               ;
	private int unitprice6            ;
	private int subtotal              ;
	private int discount              ;
	private int fee                   ;
	private int subtax                ;
	private int control               ;
	private int total                 ;
	private String invoicecode        ;
	private String timecode           ;
	private Timestamp recmade         ;
	private Timestamp recupdate       ;
	private Timestamp next_arr_dt     ;
	private Timestamp stop_day        ;
	private String name               ;
	private String zip                ;
	private String sendtype           ;
	private String addr1              ;
	private String addr2              ;
	private String telno              ;
	private int create_hideseq        ;
	private int nake_flg              ;
	private String payment            ;

}
