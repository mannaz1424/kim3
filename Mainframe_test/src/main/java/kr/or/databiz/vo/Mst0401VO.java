package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst0401VO {
	private int hideseq          ;
	private Timestamp trndate    ;
	private String custcode      ;
	private String custname      ;
	private String tel_no        ;
	private String tel_dsp       ;
	private String bound_kbn     ;
	private String category01    ;
	private String category02    ;
	private String category03    ;
	private String category04    ;
	private String category05    ;
	private String category06    ;
	private String category07    ;
	private String category08    ;
	private String category09    ;
	private String category10    ;
	private String note          ;
	private String insuser_cd    ;
	private Timestamp insdate    ;
	private String upduser_cd    ;
	private Timestamp upddate    ;

}
