package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst1012VO {
	private int hideseq            ;
	private int lineno             ;
	private Timestamp trndate      ;
	private String staffcode       ;
	private String bound_kbn       ;
	private String category01      ;
	private String category02      ;
	private String category03      ;
	private String category04      ;
	private String category05      ;
	private String category06      ;
	private String category07      ;
	private String category08      ;
	private String category09      ;
	private String category10      ;
	private String note            ;
	private String procrec_kbn     ;
	private String procset_kbn     ;
	private Timestamp recmade      ;
	private Timestamp recupdate    ;
	private Timestamp calltime_str ; 
	private Timestamp calltime_end ; 
	private int calltime_between   ;
	private int ds_hideseq         ;
	private String ds_result       ;
	private String ds_reason       ;
	private String cs_result       ;
	private int cs_hideseq         ;
   
}
