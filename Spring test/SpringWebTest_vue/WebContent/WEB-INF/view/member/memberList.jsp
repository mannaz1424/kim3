<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script type="text/javascript" src="/js/jquery-3.4.1.js"></script>
	<script type="text/javascript">
		
	</script>
</head>
<body>
	
	${sessionScope.memberBean.mbName} 님 환영 합니다. &nbsp;&nbsp;&nbsp;<button onclick="">로그아웃</button>  <br/><br/>
	
	<button onclick="location.href='/member/insertMemberForm.do'">회원가입</button> <br/>
	
	<table border="1">
		<tr>
			<td>아이디</td>
			<td>비번</td>
			<td>이름</td>
			<td>주소</td>
			<td>관리</td>
		</tr>
		<c:forEach var="member" items="${memberList}">
			<tr>
				<td>${member.mbId}</td>
				<td>${member.mbPw}</td>
				<td>${member.mbName}</td>
				<td>${member.mbAddr}</td>
				<td>
					<button>수정</button>
					<button>삭제</button>
				</td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>