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
		$("h1").html("json 처리연습2^^");	
		$("[name=site]").click(function(){
			//alert($(this).val());
			var choice = $(this).val();
			$.ajax({
				type:"post",
				url:"${path}/site.do",
				data:"site="+choice,
				dataType:"json",
				success:function(data){
					//var obj={};
					var list=[];
					var show="";
					if(choice=="마트"){
						//alert(data.mart);
						//obj=data.mart;
						//show+="<tr><th>물건명</th><td>"+obj.name+"</td></tr>";
						//show+="<tr><th>가격</th><td>"+obj.price+"</td></tr>";
						//show+="<tr><th>갯수</th><td>"+obj.cnt+"</td></tr>";
						list = data.mart;
						show="<tr><th>물건명</th><th>가격</th><th>갯수</th></tr>";
					}
					if(choice=="서점"){
						//alert(data.bkstore);
						//obj=data.bkstore;
						//show+="<tr><th>도서명</th><td>"+obj.name+"</td></tr>";
						//show+="<tr><th>가격</th><td>"+obj.price+"</td></tr>";
						//show+="<tr><th>갯수</th><td>"+obj.cnt+"</td></tr>";
						list = data.bkstore;
						show="<tr><th>도서명</th><th>가격</th><th>갯수</th></tr>";

					}
					list.forEach(function(prod){
						show+="<tr>";
						show+="<td>"+prod.name+"</td>";
						show+="<td>"+prod.price+"</td>";
						show+="<td>"+prod.cnt+"</td>";
						show+="</tr>";
					});					
					$("#shTab").html(show);
					
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
	<!--  쇼핑갈 사이트
		()마트 ()서점 -->
	<table class="table table-hover table-striped">
		<thead class="thead-light">
			<tr><th>쇼핑갈 사이트</th></tr>
		</thead>
	    <tr><td>
		    <input type="radio" name="site" value="마트"/>마트
		    <input type="radio" name="site" value="서점"/>서점
	    </td></tr>
	</table>
	<table id="shTab" class="table">

	</table>	
</div>

</body>
</html>