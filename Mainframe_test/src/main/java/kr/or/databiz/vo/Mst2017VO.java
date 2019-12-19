package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst2017VO {
	private int hideseq         ;
	private int lineno          ;
	private Timestamp calldate  ;
	private String calltimekbn  ;
	private String callflg      ;
	private Timestamp recmade   ;
	private Timestamp recupdate ;

}
