package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst0031VO {
	private String autho_cd     ;
	private String autho_nm     ;
	private String disabled     ;
	private Timestamp recmade   ;
	private Timestamp recupdate ;

}
