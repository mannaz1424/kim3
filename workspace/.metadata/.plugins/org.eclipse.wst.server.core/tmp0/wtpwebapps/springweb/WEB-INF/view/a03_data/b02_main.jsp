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
    th,td{text-align:center;}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		/* */
		//
		$("h1,table").attr("align","center");
		$("h1").html("${mem.id}님 환영합니다!");		
	});
</script>
</head>
<body>
<div class="container">
	<h1></h1>
	<table class="table table-hover table-striped">
		<thead class="thead-light">
		<!-- 인증 되었을 때, 모델 데이터를 처리 -->
			<tr><th>아이디</th><td>${mem.id}</td></tr>
			<tr><th>패스워드</th><td>${mem.pass}</td></tr>
			<tr><th>이름</th><td>${mem.name}</td></tr>
			<tr><th>권한</th><td>${mem.auth}</td></tr>
			<tr><th>포인트</th><td>${mem.point}</td></tr>
		</thead>
	</table>
</div>

</body>
</html>