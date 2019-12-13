package kr.or.databiz.vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter  @Setter
public class TestVO {
	private int account_idx;
	private String id;
	private String name;
	
	@Override
	public String toString() {
		return "TestVO [account_idx=" + account_idx + ", id=" + id + ", name=" + name + "]";
	}
	
	
	
}
