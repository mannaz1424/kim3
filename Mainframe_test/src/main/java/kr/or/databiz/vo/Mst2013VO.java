package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst2013VO {
	private String code         ;
	private String name         ;
	private String dsp_order    ;
	private String disabled     ;
	private Timestamp recmade   ;
	private Timestamp recupdate ;

}
