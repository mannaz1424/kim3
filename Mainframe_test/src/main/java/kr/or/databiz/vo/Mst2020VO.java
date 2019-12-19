package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst2020VO {
	private String pcode        ;
	private String portno       ;
	private String status       ;
	private String group_id     ;
	private Timestamp recmade   ;
	private Timestamp recupdate ;

}
