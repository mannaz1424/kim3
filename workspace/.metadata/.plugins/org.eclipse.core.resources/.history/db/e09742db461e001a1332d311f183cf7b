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
		//
		
		$("#credte").val('<fmt:formatDate value="${board.credte}" type="both"/>');
		$("#uptdte").val('<fmt:formatDate value="${board.uptdte}" type="both" />');
		
		
		$("h1,table").attr("align","center");
		$("h1").html("게시판상세화면");	
		$("#uptBtn").click(function(){
			
			if(confirm("수정하시겠습니까?")){
				//alert($("#title").val());
				if($("#title").val()==""){
					alert("제목은 반드시 등록 하여야 합니다.");
					return;
				}
				// 날짜 형식을 데이터를 입력 받지 못해서, 넘겨주는 속성값 자체를 삭제 처리..
				// [name=credte][name=uptdte] 가 문자열이기에 VO에서
				// 설정한 Date으로 할당을 할 수 없기에 객체를 삭제 처리한다.
				$("#credte, #uptdte").removeAttr("name");
				$("form").attr("action","${path}/board.do?method=update");
				$("form").submit();
			}
		});
		$("#delBtn").click(function(){
			if(confirm("삭제하시겠습니까?")){
				// controller 호출..
				
				var no = $("#no").val(); // <input id="no" name="no"
				//alert(no);
				$(location).attr("href","${path}/board.do?method=delete&no="+no)
			}
		});
/*
-- 답글 등록..(5번글 기준) 
-- no: 7 
-- refno: 5
-- title : RE:문의합니다(변경)
-- content : 입력할 내용       -----원본글 -----  
-- 등록글을 기준으로 위에 refno는 no의 값이 처리되고,
-- title은 기존 RE:를 추가.  content는 줄바꾸기 후,    -----원본글 ----- 
   해서 처리되게 한다.
 */		
		$("#replyBtn").click(function(){
			if(confirm("답글 달겠습니까?")){
				// 1. no --> refno 로 할당.
				$("#refno").val( $("#no").val() );
				$("#title").val( "RE:"+$("#title").val() );
				$("#content").val( "\n\n\n\n\n---원본글---\n"+$("#content").val() );
				$("#writer").val("");
				$("#credte, #uptdte").removeAttr("name");
				$("form").attr("action","${path}/board.do?method=insert");
				$("form").submit();
			}
		});	
		$("#schBtn").click(function(){
			$(location).attr("href","${path}/board.do?method=list");
		});	
		$(".fileCls").dblclick(function(){
			//alert($(this).val());
			$(location).attr("href","${path}/board.do?method=download&fname="+$(this).val());
		});
  	});
</script>
</head>
<body>

<div class="container">
	<h1></h1>
	<!--  클래스의 종류 크기 commandName="모델 attribute이름"  board -->
	<form:form commandName="board" method="post">
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">번호</span>
		</div>
		<form:input path="no" class="form-control" />	
		<div class="input-group-prepend">
			<span class="input-group-text">조회수</span>
		</div>
		<form:input path="readcnt" class="form-control"  />		 
	</div>	
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">상위글번호</span>
		</div>
		<form:input path="refno" class="form-control" />	
	</div>			
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">제 목</span>
		</div>
		<form:input path="title" class="form-control" />	
		<div class="input-group-prepend">
			<span class="input-group-text">작 성 자</span>
		</div>
		<form:input path="writer" class="form-control"  />		 
	</div>
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">등록일</span>
		</div>
		<form:input path="credte" class="form-control" />	
		<div class="input-group-prepend">
			<span class="input-group-text">수정일</span>
		</div>
		<form:input path="uptdte" class="form-control" />		 
	</div>		
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">내 용</span>
		</div>
		<form:textarea rows="10" path="content" class="form-control" placeholder="내용입력하세요"/>
	</div>
	<!-- board.getFnames() : ArrayList<String>로 파일명을 가져오는 메서드 -->
	<c:forEach var="fname" items="${board.fnames}" varStatus="sts">
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">파일 첨부 ${sts.count}</span>
		</div>
		<input type="text" value="${fname}"  class="form-control fileCls" readonly />	
	</div>	
	</c:forEach>
	<div style="text-align:right;">
			<input  type="button" class="btn btn-warning" 
			value="수정" id="uptBtn"/>	
			<input  type="button" class="btn btn-danger" 
			value="삭제" id="delBtn"/>	
			<input  type="button" class="btn btn-info" 
			value="답글달기" id="replyBtn"/>							
			<input  type="button" class="btn btn-success" 
			value="조회 화면" id="schBtn"/>
	</div>		
	</form:form>	
</div>

</body>
</html>