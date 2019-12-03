<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
 
<spring:message code="error.common"></spring:message>
<spring:message code="error.minlength" arguments="테스트글자, 1"></spring:message>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<h1>
	Hello world!  
	<br><br><br>
	안녕하세요....
</h1>

<P>  The time on the server is ${serverTime}. </P>

</body>
</html>