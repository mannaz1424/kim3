package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Sys020VO {
	private String seq_id     ;
	private String seq_nm     ;
	private int seq_no        ;
	private int cycle_kbn     ;
	private int seq_length    ;
	private String insuser_cd ;
	private String insdate    ;
	private String instime    ;
	private String upduser_cd ;
	private String upddate    ;
	private String updtime    ;
	private String disabled   ;

}
