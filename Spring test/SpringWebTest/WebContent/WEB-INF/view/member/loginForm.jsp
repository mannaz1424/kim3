<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	<script type="text/javascript" src="/js/jquery-3.4.1.js"></script>
	<script type="text/javascript">
		$(function() {
			
			//ready function 안은 body 태그까지 완전히 로딩이 끝난다음에 호출되는 영역.
			
		});
		
		
		//회원가입
		function insertMember() {
			var userId = $("#userId").val();
			var userPw = $("#userPw").val();
			
			console.log("아이디:" + userId + ", 패스:" + userPw);
			
			//JQeury Ajax 로 서버전송
			$.ajax({
	            url: '/member/loginProc.do',
	            type: 'post',
	            //data: $('form').serialize(),
	            data: {
	            	mbId : userId,
	            	mbPw : userPw
	            },
	            success:function(data) { //call back 
	                console.log(data);
	            	
	            	alert(data.resultMsg);
	            	
	            	if(data.result == 'ok') {
	            		location.href = '/member/memberList.do'; //화면이동
	            	}
	            }
	        });
		}
	</script>
</head>
<body>

	ID:<input type="text" id="userId" name="userId" /> <br/>
	PW:<input type="password" id="userPw" name="userPw" /> <br/>
	<button onclick="insertMember();">로그인</button> &nbsp;&nbsp;  
	<button onclick="location.href='/member/insertMemberForm.do'">회원가입</button>
	
</body>
</html>