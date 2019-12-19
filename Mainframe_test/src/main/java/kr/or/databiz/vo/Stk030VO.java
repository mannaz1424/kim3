package kr.or.databiz.vo;

import java.sql.Timestamp;
import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Stk030VO {
	private String pcode        ;
	private String prodcode     ;
	private Timestamp trndt     ;
	private int amount          ;
	private Timestamp recmade   ;
	private Timestamp recupdate ;

}
