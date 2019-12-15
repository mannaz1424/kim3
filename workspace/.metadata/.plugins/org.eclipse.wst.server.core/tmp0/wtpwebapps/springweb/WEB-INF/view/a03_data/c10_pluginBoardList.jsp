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
<link rel="stylesheet" href="${path}/a00_com/w2ui-1.2.css">
<style type="text/css">
        #wrap {
            margin: 0 auto;
            width: 760px;
            height: 400px;
        }
 #dataInput{position:absolute;left:26%;top:20%;width:40%;height:40%;background-color:white;
	  border:1px solid green;}       
        
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="${path}/a00_com/w2ui-1.2.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		/* */
		//
		$("h1,table").attr("align","center");
		$("h1").html("도서쇼핑몰^^");	
		$("#dataInput").hide();
		$("#clsBtn").click(function(){
			$("#dataInput").hide();
		});
		$("#regBtn").click(function(){
			if(confirm("등록하시겠습니까?")){
				//alert( $("form").serialize() );
				$("#dataInput").hide();
				$.ajax({
					type:"post",
					url:"${path}/board2.do?method=insert",
					data:$("form").serialize(),
					dataType:"json",
					success:function(data){
						alert(data.isSuccess);
						location.reload();
					},
	        		error:function(err){
	        			console.log(err);
	        		}		
				});
			}
		});
		
        
        //$("h2").click(function(){
        	$.ajax({
        		type:"post",
        		url:"${path}/board2.do?method=data",
        		dataType:"json",
        		success:function(data){
        			//alert(data);
        			//alert("데이터건수:"+data.blist.length);
        			init(data.blist);
        		},
        		error:function(err){
        			console.log(err);
        		}
        	});
        //});
		
	});
	function init(list){
		var addNum=[];
        $('#wrap').w2grid({
            name: 'grid',
            show: {
                header: true,
                toolbar: true,
                footer: true,
                columnHeaders: true,
                lineNumbers: true,
                expandColumn: true,
                selectColumn: true,
                emptyRecords: true,
                toolbarReload: true,
                toolbarColumns: true,
                toolbarSearch: true,
                toolbarAdd: true,
                toolbarDelete: true,
                toolbarSave: true
            },
            multiSearch:false,
            searches:[
			    { field: 'name', caption: '도서명', type: 'text'},
			    { field: 'author', caption: '저자', type: 'text'},
			    { field: 'publisher', caption: '출판사', type: 'text' }
            ],
            records:list,
			columns: [
			    { field: 'name', caption: '도서명', size: '40%', editable: { type: 'text' } },
			    { field: 'author', caption: '저자', size: '10%', editable: { type: 'text' } },
			    { field: 'publisher', caption: '출판사', size: '20%', editable: { type: 'text' } },
			    { field: 'price', caption: '가격', size: '10%', editable: { type: 'text' } },
			    { field: 'point', caption: '판매 지수', size: '20%', editable: { type: 'text' } }
			],
            onAdd: function (target, eventData) {
            	$("[name=recid]").val(this.total + 1);
            	$("#dataInput").show();           	
            	/*
            	
                this.add({
                    recid: this.total + 1,
                    name: '[입력]',
                    author: '[입력]',
                    publisher: '[입력]',
                    price: '0',
                    point: '0'
                });
            	*/
                //alert(addNum);
            },
            onChange: function (target, eventData) {
            	
            	
                //alert("변경"+JSON.stringify(this.getChanged()));
            },
            onDelete: function (target, eventData) {
            	//alert("삭제");
            	var bdata = w2ui['grid'].get(this.getSelection());
            	//alert("삭제:"+bdata.recid);
            	// ajax controller 전송, dao, service, controller
            	// 화면단에서 삭제 완료..
            	$.ajax({
            		type:"post",
            		url:"${path}/board2.do?method=delete",
            		data:"recid="+bdata.recid,
            		dataType:"json",
            		success:function(data){
            			if(data.isSuccess=='ok') alert("삭제되었습니다!");
            			location.reload();
            		},
            		error:function(err){
            			console.log(err);
            		}
            		
            	});
            },
            onSave: function (target, eventData) {
            	// 현재 저장된 내용
            	if( confirm("수정하시겠습니까?") ){
	            	var bdata = w2ui['grid'].get(this.getSelection());
	            	/*
	            	var show="기존데이터:";
	            	for(var pro in data){
	            		show+=pro+":"+data[pro];
	            	}
	            	alert(show);
	            	// JSON.stringify() : 객체를 json문자열로 변환..
	            	// JSON.parse() : json문자열을 객체로 변환.
	            	
	            	alert("변경데이터:"+JSON.stringify(this.getChanged()));
	            	*/
	            	// 기존 데이터 + 변경된 데이터 통합 처리 로직..
	            	var chData = this.getChanged()[0];
	            	for(var pro in chData){
	            		bdata[pro] = chData[pro];
	            	}
	            	//alert("전체데이터:"+JSON.stringify(bdata));
	            	
	            	//alert("변경데이터:"+JSON.stringify(this.getChanged()[0]));
	            	$.ajax({
	            		type:"post",
	            		url:"${path}/board2.do?method=update",
	            		data:bdata,
	            		dataType:"json",
	            		success:function(data){
	            			//alert(data.isSuccess);
	            			if( data.isSuccess=='ok') alert("수정완료!!");
	            			location.reload();
	            		},
	            		error:function(err){
	            			console.log(err);
	            		}
	            	});
            	}
            }
        });			
	}
	
	
</script>
</head>
<body>
<div class="container">
	<h1></h1>
</div>
<div id="wrap"></div>
<div id="dataInput">
	<h2>도서 등록</h2>
	<form>
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">번호</span>
		</div>
		<input name="recid" class="form-control" />	
		<div class="input-group-prepend">
			<span class="input-group-text">도서명</span>
		</div>
		<input name="name" class="form-control" />		 
	</div>	
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">저자</span>
		</div>
		<input name="author" class="form-control" />	
		<div class="input-group-prepend">
			<span class="input-group-text">출판사</span>
		</div>
		<input name="publisher" class="form-control" />		 
	</div>		
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">가격</span>
		</div>
		<input name="price" class="form-control" />	
		<div class="input-group-prepend">
			<span class="input-group-text">포인트</span>
		</div>
		<input name="point" class="form-control" />		 
	</div>	
	<div style="text-align:center;">
			<input  type="button" id="regBtn"  class="btn btn-primary" 
			value="등록" />
			<input  type="button" id="clsBtn"  class="btn btn-success" 
			value="창닫기" />			
	</div>			
	</form>
</div>






</body>
</html>