package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst0102VO {
	private int hideseq            ;
	private int line               ;
	private String tel_no          ;
	private String tel_dsp         ;
	private String basetel         ;
	private Timestamp lastre_date  ;
	private Timestamp lastse_date  ;
	private String insuser_cd      ;
	private Timestamp insdate      ;
	private String upduser_cd      ;
	private Timestamp upddate      ;

}
