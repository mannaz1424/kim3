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
		$("h1").html("물건 구매^^");		
	});
</script>
</head>
<body>
<%
/*
	물건가격 : @@@ 갯수는 @@
	총비용은 @@@
*/
%>
	<h1></h1>
	<table >
	    <tr><th>물건 가격</th><td>${param.price }</td></tr>
	    <tr><th>갯수</th><td>${param.cnt }</td></tr>
	    <tr><th>총비용</th><td>${tot}</td></tr>
	</table>

</body>
</html>