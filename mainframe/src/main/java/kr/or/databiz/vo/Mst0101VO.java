package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst0101VO {
	private int hideseq          ;
	private String cust_nm       ;
	private String cust_kn       ;
	private String refusal       ;
	private String cust_sel_cd   ;
	private String cust_smp_cd   ;
	private String staff_cd      ;
	private String tel_no        ;
	private String tel_dsp       ;
	private String insuser_cd    ;
	private Timestamp insdate    ;
	private String upduser_cd    ;
	private Timestamp upddate    ;
	private String cust_flg      ;

}
