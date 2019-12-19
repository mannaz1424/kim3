package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst0103VO {
	private int hideseq              ;
	private int line                 ;
	private Timestamp mst_date       ;
	private Timestamp telstt_date    ;
	private Timestamp telend_date    ;
	private String tel_staff_cd      ;
	private String bound_kbn         ;
	private String category01        ;
	private String category02        ;
	private String category03        ;
	private String category04        ;
	private String category05        ;
	private String category06        ;
	private String category07        ;
	private String category08        ;
	private String category09        ;
	private String category10        ;
	private String note              ;
	private String next_tel          ;
	private Timestamp next_tel_date  ;
	private String next_tel_time     ;
	private String next_tel_corres   ;
	private String insuser_cd        ;
	private Timestamp insdate        ;
	private String upduser_cd        ;
	private Timestamp upddate        ;
	private String disabled          ;
	private int corres_line          ;

}
