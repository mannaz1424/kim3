package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst2011VO {
	private String pcode              ;
	private String closetime          ;
	private String pausetime1_str     ;
	private String pausetime1_end     ;
	private String pausetime2_str     ;
	private String pausetime2_end     ;
	private String pausetime3_str     ;
	private String pausetime3_end     ;
	private String pausetime4_str     ;
	private String pausetime4_end     ;
	private String pausetime5_str     ;
	private String pausetime5_end     ;
	private String pausetime6_str     ;
	private String pausetime6_end     ;
	private String pausetime7_str     ;
	private String pausetime7_end     ;
	private String pausetime8_str     ;
	private String pausetime8_end     ;
	private String pausetime9_str     ;
	private String pausetime9_end     ;
	private String pausetime10_str    ;
	private String pausetime10_end    ;
	private int maxcallcnt            ;
	private int msgkeeptime           ;
	private String message            ;
	private Timestamp msgexpire       ;
	private String stopflg            ;
	private Timestamp recmade         ;
	private Timestamp recupdate       ;
	private int extdial_time          ;
	private int pp_keepdays           ;
	private int redial_keepdays       ;

}
