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
		$("h1").html("spring ajax 시작^^");
		$("[name=num01],[name=num02]").keyup(function(){
			var num01 = $("[name=num01]").val();
			var num02 = $("[name=num02]").val();
			$("#result").html(num01+" + "+num02);
			$.ajax({
				type:"post",
				url:"${path}/ajax01.do",
				data:{
					num01:num01,
					num02:num02
				},
				dataType:"text",
				success:function(data){
					$("#result").html(data);
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
	<table >
	    <tr><th>번호1</th>
	    	<td><input name="num01"/></td></tr>
		<tr><th>번호2</th>
			<td><input name="num02"/></td></tr>
		<tr><td id="result"></td></tr>	
	</table>

</body>
</html>