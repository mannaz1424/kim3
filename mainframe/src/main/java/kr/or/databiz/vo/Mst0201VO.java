package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst0201VO {
	private String code           ;
	private int sort_no           ;
	private String timezone_nm    ;
	private String insuser_cd     ;
	private Timestamp insdate     ;
	private String upduser_cd     ;
	private Timestamp upddate     ;

}
