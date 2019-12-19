package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst2015VO {
	private int hideseq             ;
	private Timestamp trndate       ;
	private int pref_order          ;
	private int sort_order          ;
	private String group_id         ;
	private String calltime_str     ;
	private String calltime_end     ;
	private String cust_smp_cd      ;
	private String telno            ;
	private String callflg          ;
	private String inline_no        ;
	private String staffcode        ;
	private Timestamp proctime      ;
	private Timestamp recmade       ;
	private Timestamp recupdate     ;
	private int listno              ;
	private String answerflg        ;
	private String portno           ;
	private int call_hideseq        ;

}
