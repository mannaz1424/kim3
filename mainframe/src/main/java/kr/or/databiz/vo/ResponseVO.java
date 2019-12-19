package kr.or.databiz.vo;

import java.io.Serializable;
import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class ResponseVO<T> implements Serializable {
	
	private int code = 0;			// 상태코드
	
	private String message;			// 메시지
	
	private int count;				// response 수
	
	private T response;
}
