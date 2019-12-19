package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Mst030VO {
	private String	code;			
	private String	name;			
	private String	kana;			
	private String	sizename;		
	private String	unitunit;		
	private String	jancode;		
	private String	type1;			
	private String	type2;			
	private String	type3;			
	private String	type4;			
	private String	type5;			
	private String	stockctrl;		
	private String	taxtype;		
	private int		unitprice;		
	private int		unitcost;		
	private int		cycle;			
	private String	disabled;		
	private Timestamp	recmade;	
	private Timestamp	recupdate;	
	private String	print_name;		
	private int		correct_amount;	
	private String	short_name;		
}
