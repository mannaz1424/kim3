package com.test.web.websocket.handler;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.google.gson.Gson;
import com.test.web.websocket.handler.vo.WebSocketVO;

public class EchoHandler extends TextWebSocketHandler {
	
	/**
	 * 화면단에서 서버단 소켓에 연결하기 위한 URL 정의
	 * ex) new SockJS('socket-handler-url'); 
	 */
	public static final String URL_WEBSOCKET_HANDLER = "/echo-ws.do";
	
	/**
	 * 웹소켓 세션관리 Map
	 * key: sessionId
	 * value: WebSocketVO
	 */
	private static Map<String, WebSocketVO> mWebSktSessMap = new HashMap<String, WebSocketVO>();
	
	
    /** 웹소켓 서버측에 텍스트 메시지가 접수되면 호출되는 메소드 **/
    @Override
    public void handleMessage(WebSocketSession session, WebSocketMessage<?> message) throws Exception {
    	
    	String openSessionId = session.getId();
        String payloadMessage = (String) message.getPayload(); //JSON 메시지로 도착한다.
    	System.out.println("클라이언트로부터 메시지 도착 - 세션ID: " + openSessionId);
    	System.out.println("서버에 도착한 메시지:" + payloadMessage);
    	
    	WebSocketVO wsVO = mWebSktSessMap.get(openSessionId);
        if(wsVO != null) {
        	//세션객체 갱신
        	wsVO.wsSession = session;
        	
            //클라이언트가 요청할 때 전달한 파라미터를 추출한다.
        	try {
        		Map<String, String> value = new Gson().fromJson( payloadMessage, Map.class);
                String tktCd = value.get("tktCd");
                System.out.println("티켓번호: " + tktCd);
                
                //티켓번호 갱신
                wsVO.tktCd = tktCd;
                
                //session.sendMessage(new TextMessage("{\"tktCd\":\"" + tktCd + "\"}"));
                sendWebSocketReloadPush(tktCd);
                
        	} catch (Exception e) {
				e.printStackTrace();
			}
        }
    }
 
    /** 웹소켓 서버에 클라이언트가 접속하면 호출되는 메소드 **/
    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        super.afterConnectionEstablished(session);
        
        String openSessionId = session.getId();
        System.out.println("클라이언트 접속됨 - sessionId: " + openSessionId);
        
        WebSocketVO wsVO = mWebSktSessMap.get(openSessionId);
        if(wsVO == null) {
        	wsVO = new WebSocketVO();
        	wsVO.sessionId = openSessionId;
        	wsVO.sessionOpenTime = System.currentTimeMillis();
        	wsVO.wsSession = session;
        	//맵에 신규 저장
        	mWebSktSessMap.put(openSessionId, wsVO);
        }
    }
 
    /** 클라이언트가 접속을 종료하면 호출되는 메소드 **/
    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
        super.afterConnectionClosed(session, status);
        System.out.println("클라이언트 접속해제 - sessionId: " + session.getId());
        //해당키 삭제
        mWebSktSessMap.remove(session.getId());
    }
 
    /** 메시지 전송시나 접속해제시 오류가 발생할 때 호출되는 메소드 **/
    @Override
    public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
        super.handleTransportError(session, exception);
        
        String openSessionId = session.getId();
        System.out.println("전송오류 발생 - sessionId: " + openSessionId);
        
        //대체로 강제로 다른 사이트로 이동하면 발생한다. --> java.io.EOFException 발생됨.
        //if(exception != null) exception.printStackTrace();
        
        WebSocketVO wsVO = mWebSktSessMap.get(openSessionId);
        if(wsVO != null) {
        	//에러내용 저장
        	wsVO.isHasException = true;
        	StringWriter errors = new StringWriter();
        	exception.printStackTrace(new PrintWriter(errors));
        	wsVO.ExceptionMsg = errors.toString();
        	wsVO.wsSession = session; //세션갱신
        }
    }
    
    
    
    /**
     * 티켓번호를 이용하여 해당 세션이 열려 있으면 WebSocket을 이용하여 호출한다.
     * @param tktCd
     * @return 발송여부. true:발송성공, false: 발송실패 및 발송안됨
     */
    public static boolean sendWebSocketReloadPush(String tktCd) {
    	boolean rtnBool = false;
    	try { 
    		
    		for( String sessionId : mWebSktSessMap.keySet() ) 
    		{
    			WebSocketVO wsVO = mWebSktSessMap.get(sessionId);
    			//동일한 티켓번호를 찾는다.
    			if( wsVO != null && StringUtils.equals(wsVO.tktCd, tktCd) ) {
    				System.out.println( "티켓번호 존재함 - " + tktCd + " : 웹소켓으로 브라우져에 리로딩 명령어 전송" );
    				//명령어 전송
    				if(wsVO.wsSession != null) {
    					wsVO.wsSession.sendMessage(new TextMessage("{\"command\":\"reload\"}"));
        				rtnBool = true;	
    				}
    				//break;
    			}
    		}

    	} catch (Exception e) {
			e.printStackTrace(); 
		}
    	return rtnBool;
    }
    
}
