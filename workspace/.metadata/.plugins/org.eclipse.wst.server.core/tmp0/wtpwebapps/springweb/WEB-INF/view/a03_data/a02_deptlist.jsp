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
    .input-group-text{width:100%;}
    .input-group-prepend{width:40%;}   
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
		$("h1").html("부서정보조회");	
		$("#regBtn").click(function(){
			// alert("등록 화면 호출");
			// controller 호출..
			//$(location).attr("href","${path}/dept.do?method=regForm");
			// 다이얼로그로 부서정보 처리하기..
			// 1. div로 다이얼로그 박스 선언..
			//    부서번호, 부서명, 부서위치..
			// 2. 등록시, ajax.method=insAjax	 호출..
			// 3. 등록 완료후, confirm창으로 창닫기 여부 확인
			//     창을 닫고, 리스트 데이터 등록된 내용 refresh, 확인 또는 계속 등록..
			$("#dialog").dialog("open");
		});
		$("#dialog").dialog({
			autoOpen:false,
			buttons:{
				"등록":function(){ 
					var deptnoVal = $("#deptno").val();
					var dnameVal = $("#dname").val();
					var locVal = $("#loc").val();
					// ajax처리..
					
					$.ajax({
						type:"post",
						url:"${path}/dept.do?method=insAjax",
						data:{deptno:deptnoVal,dname:dnameVal,loc:locVal},
						dataType:"json",
						success:function(data){
							//alert(data.ok);
							if(data.ok=="ok"){
								$(".form-inline").submit();
								if(confirm("정상등록되었습니다!\n창을 닫으시겠습니까?")){
									$("#dialog").dialog("close");
								}else{
									$("#deptno").val("");
									$("#dname").val("");
									$("#loc").val("");
								}
							}
						},
						error:function(err){
							console.log(err);
						}
					});					
					
					
					
				},
				"초기":function(){ 	
					$("#deptno").val("");
					$("#dname").val(""); 
					$("#loc").val(""); 
				},
				"창닫기":function(){ 
					$("#dialog").dialog("close");
				}
			},
			modal:true
		});		
		
	});
</script>
</head>
<body>
<div class="container">
	<h1></h1>
	<form class="form-inline" method="post" action="${path}/dept.do?method=list">
		<label>부서명:</label><input class="form-control" name="dname" value="${param.dname }"/>
		<label>부서위치:</label><input class="form-control" name="loc" value="${param.loc }"/>
		<button type="submit" class="btn btn-primary">검색</button>
		<input type="button" class="btn btn-info" value="등록" id="regBtn"/>
		
		
	</form>
	<table class="table table-hover table-striped">
		<thead class="thead-light">
			<tr><th>부서번호</th><th>부서명</th><th>부서위치</th></tr>
		</thead>
		<c:forEach var="dept" items="${dlist}">
	    <tr><td>${dept.deptno}</td><td>${dept.dname}</td><td>${dept.loc}</td></tr>
	    </c:forEach>
	</table>
	<form id="regForm">
	    <div id="dialog" title="부서정보 등록">
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">부서번호</span>
				</div>
				<input name="deptno" id="deptno" class="form-control" />	
			</div>	    
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">부 서 명</span>
				</div>
				<input name="dname" id="dname" class="form-control" />	
			</div>		    
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">부서위치</span>
				</div>
				<input name="loc" id="loc" class="form-control" />	
			</div>		    

	    </div>	
    </form>
</div>
</body>
</html>






