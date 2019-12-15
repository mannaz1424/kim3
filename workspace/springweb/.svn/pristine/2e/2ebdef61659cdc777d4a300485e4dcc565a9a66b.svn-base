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
		$("h1").html("회원등록여부 확인");	
		$("[name=id]").keyup(function(){
			var len = $(this).val().length;
			if(len>=8 && len<=12){
				$.ajax({
					type:"post",
					url:"${path}/ajax05.do",
					data:{id:$(this).val()},
					dataType:"json",
					success:function(data){
						
						if(data.valid){
							$("#show").html("등록 가능합니다.");
						}else{
							$("#show").html("등록된 아이디 입니다.");
						}
					},
					error:function(err){
						console.log(err);
					}
					
				});
			}else{
				$("#show").html("등록 아이디는 8~12글자로 가능합니다.");
			}
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
	    <tr><th>회원아이디</th>
	    	<td><input name="id"/></td></tr>
		<tr><td colspan="2" id="show"></td></tr>
	</table>

</body>
</html>