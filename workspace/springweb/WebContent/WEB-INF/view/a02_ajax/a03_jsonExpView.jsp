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
		$("h1").html("key in JSON 시작^^");	
		$("#sch").keyup(function(){
			var inData = $(this).val();
			// key in 한 내용 출력
			
			$.ajax({
				type:"post",
				url:"${path}/sch.do",
				data:{sch:inData},
				dataType:"json",
				success:function(data){
					// 서버에서 model이름으로 list를 넘겼을 때, 처리
					// d.addAttribute("list", 객체);
					var show="<tr><td>검색할 문자열 입력하세요!</td></tr>";
					if(typeof(data.list)=="object"){
						//show="데이터크기:"+data.list.length;
						// 배열 list 데이터를 table안에 list로 출력..
						var list = data.list;
						list.forEach(function(item, idx){
							// title 부분 설정.
							if(idx==0){
								show="<tr>";
								for(var pro in item){
									show+="<th>"+pro+"</th>";
								}
								show+="</tr>";
							}
							// 리스트할 데이터 부분
							show+="<tr>";
							for(var pro in item){
								show+="<td>"+item[pro]+"</td>";
							}
							show+="</tr>";
						});
					}else{
						if(inData.length>0) show="<tr><td>"+data.list+"</td></tr>";
						
					}
					$("#show").html(show);
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
			<tr><th>확인할 데이터</th><td><input id="sch"/></td></tr>
		</thead>
	</table>
	<table id="show" class="table table-hover table-striped">
		<thead class="thead-light">
			<tr><td/></td></tr>
		</thead>
	</table>	
</div>

</body>
</html>