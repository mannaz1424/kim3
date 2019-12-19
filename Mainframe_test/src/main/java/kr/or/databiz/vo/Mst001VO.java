package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst001VO {
	private String code         ;
	private String name         ;
	private String kana         ;
	private String zip          ;
	private String addr1        ;
	private String addr2        ;
	private String tel          ;
	private String fax          ;
	private String leader       ;
	private Timestamp recmade   ;
	private Timestamp recupdate ;

}
