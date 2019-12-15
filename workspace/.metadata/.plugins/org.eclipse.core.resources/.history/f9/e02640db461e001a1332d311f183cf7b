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
		$("h1").html("사원정보등록!!");		
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
	<form action="${path}/dept.do?method=insert" method="post">
	<table class="table table-hover table-striped">
		<thead class="thead-light">
			<tr><th>부서번호</th><td><input type="text" class="form-control" name="deptno"/></td></tr>
			<tr><th>부서명</th><td><input type="text" class="form-control" name="dname"/></td></tr>
			<tr><th>부서위치</th><td><input type="text" class="form-control" name="loc"/></td></tr>
			<tr><td colspan="2"><input type="submit" class="btn btn-info" value="등록"/></td></tr>
		</thead>
	</table>
	</form>
</div>

</body>
</html>