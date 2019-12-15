<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,java.net.*"
    import="backprj.z01_vo.*,backprj.c01_database.*"
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
<link rel="stylesheet" href="${path}/a00_com/a00_com.css" >
<style type="text/css">
/* */
	input[type=text]{width:100%;}
</style>
<script type="text/javascript">
	window.onload=function(){
		/* */
		var h1 = document.querySelector("h1");
		h1.innerHTML="스프링 시작";
	};
</script>
</head>
<body>
<%
/*

*/
%>
	<h1></h1>
	<table align="center">
	    <tr><th>타이틀</th><td>내용</td></tr>
		<tr><th>타이틀</th><td>내용</td></tr>
	</table>

</body>
</html>