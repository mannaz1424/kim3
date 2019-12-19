package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst0023VO {
	private String code           ;
	private int lineno            ;
	private String branchcode     ;
	private String teamcode       ;
	private Timestamp limit_date  ;
	private Timestamp recmade     ;
	private Timestamp recupdate   ;

}
