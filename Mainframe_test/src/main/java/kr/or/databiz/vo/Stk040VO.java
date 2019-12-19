package kr.or.databiz.vo;

import java.sql.Timestamp;
import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Stk040VO {
	private String pcode          ;
	private String prodcode       ;
	private Timestamp trndate     ;
	private String trntype        ;
	private int hideseq           ;
	private int lineno            ;
	private int amount            ;
	private Timestamp recmade     ;
	private Timestamp recupdate   ;

}
