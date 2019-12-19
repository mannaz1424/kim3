package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst0032VO {
	private String autho_cd     ;
	private String sys_kbn      ;
	private String prog_id      ;
	private String disabled     ;
	private Timestamp recmade   ;
	private Timestamp recupdate ;

}
