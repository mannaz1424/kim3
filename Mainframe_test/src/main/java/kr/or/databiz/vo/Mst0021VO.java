package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst0021VO {
	private String staffcode    ;
	private String autho_cd     ;
	private String disabled     ;
	private Timestamp recmade   ;
	private Timestamp recupdate ;

}
