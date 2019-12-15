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
		$("h1").html("ajax의 요청값 데이터^^");	

		$("#chData").change(function(){
			// 선택된 정보
			var ch = $(this).val();
			$.ajax({
				type:"post",
				url:"${path}/chData.do",
				data:{chData:ch},
				dataType:"json",
				success:function(data){
					var list=[];
					if(ch=='사원정보'){
						list =data.emp;
					}
					if(ch=='부서정보'){
						list=data.dept;
					}	
					var show="";
					list.forEach(function(item,idx){
						if(idx==0){
							show+="<thead class='thead-light'><tr>";
							for(var pro in item){
								show+="<th>";
								show+=pro;
								show+="</th>";
							}
							show+="</tr></thead>";							
						}
						show+="<tr>";
						for(var pro in item){
							show+="<td>";
							show+=item[pro];
							show+="</td>";
						}
						show+="</tr>";
					});
					$("#shTab").html(show);
					
					
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
	<table class="table table-hover table-striped" >
		<thead class="thead-light">
			<tr><th>선택 데이터</th></tr>
		</thead>
	    <tr><td><select id="chData">
	    			<option>사원정보</option>
	    			<option>부서정보</option>
	    		</select></td></tr>
	</table>
	<table id="shTab" class="table table-hover table-striped">
	</table>	
</div>

</body>
</html>