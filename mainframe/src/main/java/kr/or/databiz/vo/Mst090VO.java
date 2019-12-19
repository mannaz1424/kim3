package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst090VO {
	private String tabletype      ;
	private String lcode          ;
	private String code           ;
	private String name           ;
	private Timestamp recmade     ;
	private Timestamp recupdate   ;

}
