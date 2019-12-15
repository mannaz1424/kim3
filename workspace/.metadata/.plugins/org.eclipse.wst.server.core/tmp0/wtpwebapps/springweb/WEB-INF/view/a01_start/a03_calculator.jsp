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
		$("h1,table").attr("align","center");
		$("h1").html("요청값 처리^^");		
	});
</script>
</head>
<body>
<%
/*

*/
%>
	<h1></h1>
	<table >
	    <tr><th>num01</th><td>${param.num01}</td></tr>
		<tr><th>num02</th><td>${param.num02}</td></tr>
		<tr><td>${calResult}</td></tr>
	</table>

</body>
</html>