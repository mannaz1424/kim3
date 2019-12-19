package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst060VO {
	private String code         ;
	private String name         ;
	private String note         ;
	private String repeatflg    ;
	private Timestamp recmade   ;
	private Timestamp recupdate ;

}
