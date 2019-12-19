package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst0901VO {
	private String pcode           ;
	private int hideseq            ;
	private Timestamp set_day_str  ;
	private Timestamp set_day_end  ;
	private int set_amount         ;
	private String set_money_kbn   ;
	private int set_money          ;
	private String insuser_cd      ;
	private Timestamp insdate      ;
	private String upduser_cd      ;
	private Timestamp upddate      ;

}
