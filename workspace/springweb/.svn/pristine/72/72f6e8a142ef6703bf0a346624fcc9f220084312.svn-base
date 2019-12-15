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
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css">
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
<style type="text/css">
    .input-group-text{width:100%;}
    .input-group-prepend{width:30%;}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		/* */
		//mem.id : 모델데이터가 설정되어 있기 때문에 가능하다.
		var id = "${mem.id}";
		if(id!=''){
			alert(id+"님은 인증된 계정이 아닙니다");
		}
		$("h1,table").attr("align","center");
		$("h1").html("로그인");		
	});
</script>
</head>
<body>
<%
/*

*/
%>
<div class="container">
	<h1></h1>
	<form method="post" action="${path}/member.do?method=login">
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">아이디</span>
		</div>
		<input type="text" class="form-control" name="id"
			 placeholder="아이디 입력"/>
	</div>
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">패스워드</span>
		</div>
		<input type="password" class="form-control" name="pass"
			 placeholder="패스워드 입력"/>
	</div>	
	<div style="text-align:center;">
			<input  type="submit" class="btn btn-primary" 
			value="로그인" />
	</div>			
	</form>
</div>
</body>
</html>