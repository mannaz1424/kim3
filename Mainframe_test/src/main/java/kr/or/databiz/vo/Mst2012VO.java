package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst2012VO {
	private String pcode              ;
	private String inline_no          ;
	private String pc_ipaddr          ;
	private String staffcode          ;
	private String status             ;
	private String message            ;
	private Timestamp msgexpire       ;
	private String disabled           ;
	private Timestamp recmade         ;
	private Timestamp recupdate       ;
	private String computer_name      ;
	private Timestamp calltranstime   ;
	private String absence            ;
	private String portno             ;

}
