package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst070VO {
	private int hideseq          ;
	private String name          ;
	private String prodcode1     ;
	private int amount1          ;
	private String prodcode2     ;
	private int amount2          ;
	private String prodcode3     ;
	private int amount3          ;
	private String prodcode4     ;
	private int amount4          ;
	private String prodcode5     ;
	private int amount5          ;
	private String prodcode6     ;
	private int amount6          ;
	private int subtotal         ;
	private int discount         ;
	private int fee              ;
	private int subtax           ;
	private int control          ;
	private int total            ;
	private Timestamp recmade    ;
	private Timestamp recupdate  ;

}
