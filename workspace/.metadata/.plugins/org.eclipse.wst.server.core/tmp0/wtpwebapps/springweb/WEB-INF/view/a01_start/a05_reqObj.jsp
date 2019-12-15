<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,java.net.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* */
	input[type=text]{width:100%;}
</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		/* */
		//
		$("h1,h2,table").attr("align","center");
		$("h1").html("요청객체 연습^^");	
		$("#regBtn").click(function(){
			$.ajax({
				type:"post",
				url:"${path}/regMem.do",
				data:$("form").serialize(),
				dataType:"json",
				success:function(data){
					if(data.isSucc){
						alert("회원 등록 완료!");
					}	
				},
				error:function(err){
					console.log(err);
				}
				
			})
		});
	});
</script>
</head>
<body>
<%
/*
*/
%>
	<h1></h1>
	<h2>회원등록</h2>
	<form>
	<table >
	    <tr><th>아이디</th><td><input name="id"/></td></tr>
		<tr><th>패스워드</th><td><input name="pass"/></td></tr>
		<tr><th>이름</th><td><input name="name"/></td></tr>
		<tr><th>권한</th><td><input name="auth"/></td></tr>
		<tr><th>초기포인트</th><td><input name="point"/></td></tr>
		<tr><td colspan="2"><input type="button" 
				id="regBtn" value="등록"/></td></tr>
	</table>
	</form>

</body>
</html>