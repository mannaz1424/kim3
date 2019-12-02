<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Websocket Client</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.js"></script>
<script type="text/javascript">
	$(function() {
		var url = window.location.host;//웹브라우저의 주소창의 포트까지 가져옴
		var pathname = window.location.pathname; /* '/'부터 오른쪽에 있는 모든 경로*/
		var appCtx = pathname.substring(0, pathname.indexOf("/", 2));
		var root = url + appCtx;

		console.log(root);
		//var ws = new WebSocket("ws://" + root + "/echo-ws");
		var ws = new WebSocket("ws://172.20.10.12:8080/echo-ws.do");

		ws.onopen = function() {
			$('#chatStatus').text('Info: connection opened.');

			$('input[name=chatInput]').on('keydown', function(evt) {
				if (evt.keyCode == 13) {
					var msg = $('input[name=chatInput]').val();
					ws.send(msg);
					$('input[name=chatInput]').val('');
				}
			});
		};
		ws.onmessage = function(event) {
			$('textarea').eq(0).prepend(event.data + '\n');
		};
		ws.onclose = function(event) {
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
		메시지 입력 : <input type="text" name="chatInput">
</body>
</html>
