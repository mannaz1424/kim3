package com.test.web.websocket.handler.vo;

import org.springframework.web.socket.WebSocketSession;

public class WebSocketVO {

	/** 웹소켓 세션ID **/
	public String sessionId;
	
	/** 최초 세션이 open 된 시간 : milliseconds(long) **/
	public long sessionOpenTime;
	
	/** 티켓코드 **/
	public String tktCd;
	
	/** Exception 발생여부: 메시지 발송시 Exception 발생시 여부를 저장 **/
	public boolean isHasException;
	
	/** Exception 메시지 **/
	public String ExceptionMsg;
	
	/** WebSocketSession - Serialize 제외 **/
	public transient WebSocketSession wsSession;
	
}
