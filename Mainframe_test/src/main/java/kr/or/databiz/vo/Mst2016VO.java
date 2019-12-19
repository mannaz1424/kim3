package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst2016VO {
	private String code          ;
	private int dsp_order        ;
	private Timestamp recmade    ;
	private Timestamp recupdate  ;

}
