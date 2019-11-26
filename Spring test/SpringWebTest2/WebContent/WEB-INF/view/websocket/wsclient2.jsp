<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Websocket Client</title>
<script type="text/javascript" src="/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="/js/sockjs-1.4.0.js"></script>
<script type="text/javascript">
	$(function() {
		var url = window.location.host;//웹브라우저의 주소창의 포트까지 가져옴
		var pathname = window.location.pathname; /* '/'부터 오른쪽에 있는 모든 경로*/
		var appCtx = pathname.substring(0, pathname.indexOf("/", 2));
		var root = url + appCtx;

		console.log(root);
		
		var sock = new SockJS("${wsHandleUrl}");
		sock.onopen = function() {
		    console.log('open');
		    $('#chatStatus').text('Info: connection opened.');

			$('input[name=chatInput]').on('keydown', function(evt) {
				if (evt.keyCode == 13) {
					var msg = $('input[name=chatInput]').val();
					
					var paramObj = {};
					paramObj.tktCd = msg;
					sock.send( JSON.stringify(paramObj) );
					
					$('input[name=chatInput]').val('');
				}
			});
		};
		
		sock.onmessage = function(e) {
		    console.log('message', e.data);
		    $('textarea').eq(0).prepend(e.data + '\n');
		    
		    var obj = JSON.parse(e.data);
		    
		    if("command" in obj) {
		    	if(obj.command == 'reload') {
		    		alert("리로드 합니다.");
		    		window.location.href = window.location.href;
		    		//document.getElementById('YOUR IFRAME').contentDocument.location.reload(true);
		    	}
		    }
		    //sock.close();
		};
		
		sock.onclose = function() {
		    console.log('close');
		    $('#chatStatus').text('Info: connection closed.');
		};		

	});
</script>
</head>
<body>
	<p>
	<div id='chatStatus'></div>
	<textarea name="chatMsg" rows="5" cols="40"></textarea>
	<p>
		메시지 입력(티켓번호) : <input type="text" name="chatInput" value="1234567890">
</body>
</html>
