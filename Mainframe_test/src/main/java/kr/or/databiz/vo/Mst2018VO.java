package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst2018VO {
	private String telno2         ;
	private String telno          ;
	private int sortno            ;
	private Timestamp recmade     ;
	private Timestamp recupdate   ;

}
