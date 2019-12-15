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
		$("h1").html("ajax 연습2^^");		
		$("input").keyup(function(){
			//$("#result").html($("form").serialize());
			$.ajax({
				type:"post",
				url:"${path}/ajax03.do",
				data:$("form").serialize(),
				dataType:"json",
				success:function(data){
					var show="물건은 "+data.name+"이고, "
					show+="구매 단가는 "+data.price+"원 이고, "
					show+=data.cnt+"개를 구매하여, 총"
					show+=data.tot+"원 입니다. "
					$("#result").html(show);
				},
				error:function(xhr,status,error){
					console.log(error);
					console.log(xhr);
					console.log(status);
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
	<h1></h1>
	<form>
	<table >
	    <tr><th>물건명</th><td><input name="name"/></td></tr>
	    <tr><th>가격</th><td><input name="price" value="0"/></td></tr>
	    <tr><th>갯수</th><td><input name="cnt" value="0"/></td></tr>
		<tr><td colspan="2" id="result">내용</td></tr>
	</table>
	</form>

</body>
</html>