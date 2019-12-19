package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst20151VO {
	private int call_hideseq     ;
	private String name          ;
	private String order_name    ;
	private String out_cond      ;
	private String list_kubun1   ;
	private String list_kubun2   ;
	private String ds_reason_nm  ;

}
