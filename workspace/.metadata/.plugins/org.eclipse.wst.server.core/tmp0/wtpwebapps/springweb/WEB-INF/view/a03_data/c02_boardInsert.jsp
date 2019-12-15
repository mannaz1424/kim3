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
    .input-group-text{width:100%;}
    .input-group-prepend{width:20%;}
    
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var no=${board.no};
		var title='${board.title}';
		// 입력 후, 처리되는 내용..(답글과 구분해서 처리..)
		if(no==0 && title!=''){
			$("#title, #writer, #content").val('');
			$("#refno").val(0);
			if(confirm("등록 되었습니다!!\n메인페이지로 이동할려면 확인!")){
				$(location).attr("href","${path}/board.do?method=list");
			}
			
		}
		
		/* */
		//
		$("h1,table").attr("align","center");
		$("h1").html("게시판등록");	
		$("#regBtn").click(function(){
			if(confirm("등록하시겠습니까?")){
				if($("#title").val()==""){
					alert("제목은 반드시 등록 하여야 합니다.");
					return;
				}
				$("form").submit();
			}
		});
		$("#schBtn").click(function(){
			$(location).attr("href","${path}/board.do?method=list");
		});		
		
		$(".custom-file-input").on("change",function(){
			//alert($(this).val()+":"+$(this).next(".custom-file-label").html());
			$(this).next(".custom-file-label").html($(this).val());
		});
		
		
		
	});
</script>
</head>
<body>
<div class="container">
	<h1></h1>
	<!--  클래스의 종류 크기 commandName="모델 attribute이름"  board -->
	<form:form commandName="board" enctype="multipart/form-data" method="post">	
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">제 목</span>
		</div>
		<form:input path="title" class="form-control" placeholder="제목입력하세요" />	
		<div class="input-group-prepend">
			<span class="input-group-text">작 성 자</span>
		</div>
		<form:input path="writer" class="form-control" placeholder="작성자입력하세요" />		 
	</div>
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">상위글번호</span>
		</div>
		<form:input path="refno" class="form-control" />	
	</div>		
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">내 용</span>
		</div>
		<form:textarea rows="10" path="content" class="form-control" placeholder="내용입력하세요"/>
	</div>
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">파일 첨부1</span>
		</div>
		<div class="custom-file">
			<input type="file" class="custom-file-input" id="file01"  name="report">
			<label class="custom-file-label" for="file01">파일 선택하세요!</label>
		</div>
	</div>	
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">파일 첨부2</span>
		</div>
		<div class="custom-file">
		<input type="file" class="custom-file-input" id="file02"  name="report">
			<label class="custom-file-label" for="file02">파일 선택하세요!</label>
		</div>
	</div>	
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">파일 첨부3</span>
		</div>
		<div class="custom-file">
		<input type="file" class="custom-file-input" id="file03"  name="report">
			<label class="custom-file-label" for="file03">파일 선택하세요!</label>		
		</div>
	</div>	
	<div style="text-align:right;">
			<input  type="button" class="btn btn-primary" 
			value="등록" id="regBtn"/>	
			<input  type="button" class="btn btn-success" 
			value="조회 화면" id="schBtn"/>
	</div>		
	</form:form>	
</div>

</body>
</html>