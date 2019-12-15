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
    .input-group-text{width:100%;}
    .input-group-prepend{width:20%;}
    
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
		$("h1").html("사원상세화면");	
		$("#uptBtn").click(function(){
			if(confirm("수정하시겠습니까?")){
				if($("[name=ename]").val()==""){
					alert("이름은 반드시 등록 하여야 합니다.");
					return;
				}
				if($("[name=mgr]").val()=="") $("[name=mgr]").val(0);
				if($("[name=sal]").val()=="") $("[name=sal]").val(0);
				if($("[name=comm]").val()=="") $("[name=comm]").val(0);
				if($("[name=deptno]").val()=="") $("[name=deptno]").val(0);
				// 수정하는 action을 호출 처리..(controller단)
				$("form").attr("action","${path}/emp.do?method=update");
				
				//alert($("[name=ename]").val()+":"+$("form").attr("action"));
				$("form").submit();
			}
		});
		$("#delBtn").click(function(){
			if(confirm("삭제하시겠습니까?")){
				var empno = $("[name=empno]").val();
				//alert("삭제empno:"+empno)
				$(location).attr("href","${path}/emp.do?method=delete&empno="+empno);
			}
		});
		$("#schBtn").click(function(){
			$(location).attr("href","${path}/emp.do?method=list");
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
	<!--  클래스의 종류 크기 -->
	<form method="post">	
	<div class="input-group mb-3">
		<!-- 타이틀  : 입력text -->
		<div class="input-group-prepend">
			<span class="input-group-text">사원번호</span>
		</div>
		<input type="text" class="form-control" name="empno"
			 value="${emp.empno}" readOnly/>
		<div class="input-group-prepend">
			<span class="input-group-text">입사일</span>
		</div>
		<input type="text" class="form-control" name="hiredate"
			 value='<fmt:formatDate value="${emp.hiredate}" pattern="yyyy/MM/dd"/>'/>		
	</div>

	<div class="input-group mb-3">
		<!-- 타이틀  : 입력text -->
		<div class="input-group-prepend">
			<span class="input-group-text">사원명</span>
		</div>
		<input type="text" class="form-control" name="ename"
			 value="${emp.ename}"/>
		<div class="input-group-prepend">
			<span class="input-group-text">직 책</span>
		</div>
		<input type="text" class="form-control" name="job"
			 value="${emp.job}"/>			 
	</div>

	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">관리자번호</span>
		</div>
		<input type="text" class="form-control" name="mgr"
			 value="${emp.mgr}"/>
		<div class="input-group-prepend">
			<span class="input-group-text">부서번호</span>
		</div>
		<input type="text" class="form-control" name="deptno"
			 value="${emp.deptno}"/>			 
	</div>
	<div class="input-group mb-3">
		<!-- 타이틀  : 입력text -->
		<div class="input-group-prepend">
			<span class="input-group-text">급여</span>
		</div>
		<input type="text" class="form-control" name="sal"
			 value="${emp.sal}"/>
		<div class="input-group-prepend">
			<span class="input-group-text">보너스</span>
		</div>
		<input type="text" class="form-control" name="comm"
			 value="${emp.comm}"/>			 
	</div>	
	<div style="text-align:right;">
			<input  type="button" class="btn btn-info" 
			value="수정" id="uptBtn"/>	
			<input  type="button" class="btn btn-warning" 
			value="삭제" id="delBtn"/>				
			<input  type="button" class="btn btn-primary" 
			value="조회화면" id="schBtn"/>
	</div>		
	</form>	
</div>

</body>
</html>