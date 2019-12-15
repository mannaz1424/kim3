<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,java.net.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
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
		$("h1").html("파일업로드 예제2");	
		$("#btnSend").click(function(){
			if(confirm("파일업로드하시겠습니까?")){
				$("form").attr("action","${path}/upload3.do");
				$("form").submit();
			}
		});
	});
</script>
</head>
<body>
<div class="container">
	<h1></h1>
	<form enctype="multipart/form-data" method="post">
	<table class="table table-hover table-striped">
		<thead class="thead-light">
			<tr><th>내용</th><td><input type="text" name="name" /></td></tr>
			<tr><th>파일업로드1</th><td><input type="file" name="report" /></td></tr>
			<tr><th>파일업로드2</th><td><input type="file" name="report" /></td></tr>
			<tr><th>파일업로드3</th><td><input type="file" name="report" /></td></tr>
			<tr><td colspan="2"><input type="button" id="btnSend" 
				value="파일 업로드" /></td></tr>
		</thead>
	</table>
	</form>
</div>

</body>
</html>