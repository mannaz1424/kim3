<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<form method="post" action="/member/insertMember.do">
		회원가입<br />
		<br />
		<div>
			<label for="mbId" style="display: inline-block; width: 100px;">회원아이디</label>
			<input type="text" name="mbId" id="mbId" />
		</div>
		<div>
			<label for="mbName" style="display: inline-block; width: 100px;">회원명</label>
			<span><input type="text" name="mbName" id="mbName" /></span>
		</div>
		<div>
			<label for="mbPw" style="display: inline-block; width: 100px;">회원패스워드</label>
			<span><input type="text" name="mbPw" id="mbPw" /></span>
		</div>
		<div>
			<label for="mbAddr" style="display: inline-block; width: 100px;">회원주소</label>
			<span><input type="text" name="mbAddr" id="mbAddr" /></span>
		</div>
		<input type="submit" value="회원가입">
	</form>


</body>
</html>