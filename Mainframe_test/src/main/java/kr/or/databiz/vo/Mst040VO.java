package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst040VO {
	private String tbltype      ;
	private String typeno       ;
	private String code         ;
	private String name         ;
	private String disabled     ;
	private Timestamp recmade   ;
	private Timestamp recupdate ;

}
