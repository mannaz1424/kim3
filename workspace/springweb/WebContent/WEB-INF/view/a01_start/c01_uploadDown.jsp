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
		$("h1").html("파일다운로드^^");	
/* 		
# 다운로드처리할 process
1. 해당 파일명과 함께 서버에 다운로드 controller에 전달..
2. controller에서는 해당 파일을 받아서, model로 데이터 설정.
3. 사용자 정의 다운로드처리(downloadviewer- dispatcherservlet에 등록된 것)
4. 사용자 정의 다운로드 viewer에서는 model로 해당 내용으로 jsp에서 지원하는 다운처리 모듈로 
	처리함..



 */		
		$("td").click(function(){
			//alert("다운할 파일명:"+$(this).html());
			var fname = $(this).html();
			$(location).attr("href","${path}/fileDown.do?fname="+fname);
		});
	});
</script>
</head>
<body>
<div class="container">
	<h1></h1>
	<table class="table table-hover table-striped">
		<thead class="thead-light">
			<tr><th>다운로드할 파일</th></tr>
		</thead>
	    <tr><td>bk_img02.PNG</td></tr>
	    <tr><td>bk_img03.PNG</td></tr>
	    <tr><td>bk_img04.PNG</td></tr>
	</table>
</div>

</body>
</html>