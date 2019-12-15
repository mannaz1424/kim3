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
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css">
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
<style type="text/css">

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
		$("h1").html("model 연습(click)^^");
		$("h1").click(function(){
			$.ajax({
				type:"post",
				url:"${path}/callJson.do",
				dataType:"json",
				success:function(data){
					// data.모델key.name
					// data.모델key.age
					//alert(data.p01.name);
					var sh = data.p01.name+":";
					sh += data.p01.age+":";
					sh += data.p01.loc;
					$("#show").html(sh);
				},
				error:function(err){
					console.log(err);
				}
				
			});
			
		});
	});
</script>
</head>
<body>
<%
/*

*/
%>
<div class="container">
	<h1></h1>
	<table class="table table-hover table-striped">
		<thead class="thead-light">
			<tr><th>물건명</th><th>가격</th><th>갯수</th></tr>
		</thead>
	    <tr><td>${p.name}</td><td>${p.price}</td><td>${p.cnt}</td></tr>
	</table>
	<div id="show"></div>
</div>
</body>
</html>