package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst0301VO {
	private String pcode        ;
	private String year         ;
	private String day          ;
	private Timestamp fulldate  ;
	private String name         ;
	private String insuser_cd   ;
	private Timestamp insdate   ;
	private String upduser_cd   ;
	private Timestamp upddate   ;

}
