package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst2021VO {
	private String code           ;
	private int termcnt_str       ;
	private int termcnt_end       ;
	private int extdial           ;
	private Timestamp recmade     ;
	private Timestamp recupdate   ;

}
