<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,java.net.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<fmt:requestEncoding value="utf-8"/>
<c:choose>
	<c:when test="${param.id=='himan' and param.pass=='7777' }">
		<h2>${param.id}로그인 성공</h2>
		<p>환영 합니다! 좋은 시간 되시길!!</p>
	</c:when>
	<c:otherwise>
		<h2>${param.id}님은 인정된 계정이 아닙니다.</h2>
		<p>다시 로그인 해보시길!!</p>	
	</c:otherwise>
</c:choose>
