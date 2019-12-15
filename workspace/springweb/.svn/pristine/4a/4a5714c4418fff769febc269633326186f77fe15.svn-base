<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,java.net.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="utf-8"/>
<c:choose>
	<c:when test="${param.id=='himan777' or param.pass=='higirl888' }">
		<h3>${param.id}은 이미 등록된 아이디입니다.</h3>
	</c:when>
	<c:otherwise>
		<h3>${param.id}는 등록 가능한 아이디입니다.</h3>
	</c:otherwise>
</c:choose>