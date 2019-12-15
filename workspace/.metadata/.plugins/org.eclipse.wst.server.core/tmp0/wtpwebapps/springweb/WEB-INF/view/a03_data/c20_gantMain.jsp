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
    th,td{text-align:center;}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script type="text/javascript">
// Task VO "id": -1, "name": "내용", "progress": 0, "progressByWorklog": false, "relevance": 0, "type": "", "typeId": "", "description": "", "code": "", "level": 0, "status": "STATUS_ACTIVE", "depends": "", "canWrite": true, "start": 1396994400000, "duration": 20, "end": 1399586399999, "startIsMilestone": false, "endIsMilestone": false, "collapsed": false, "assigs": [], "hasChild": true
// Resource VO  "id": "tmp_1", "name": "개발자 1"
// Role VO
// 위 내용을 전체 포함하는 Gant VO


// {"tasks":[],"selectedRow": 2, "deletedTaskIds": [],"resources": [], "roles":[],
//   "roles":[],"canWrite":    true, "canDelete":true, "canWriteOnParent": true, canAdd:true}
	var ret= {"tasks":    [
	    {"id": -1, "name": "내용", "progress": 0, "progressByWorklog": false, "relevance": 0, "type": "", "typeId": "", "description": "", "code": "", "level": 0, "status": "STATUS_ACTIVE", "depends": "", "canWrite": true, "start": 1396994400000, "duration": 20, "end": 1399586399999, "startIsMilestone": false, "endIsMilestone": false, "collapsed": false, "assigs": [], "hasChild": true},
	    {"id": -2, "name": "coding", "progress": 0, "progressByWorklog": false, "relevance": 0, "type": "", "typeId": "", "description": "", "code": "", "level": 1, "status": "STATUS_ACTIVE", "depends": "", "canWrite": true, "start": 1396994400000, "duration": 10, "end": 1398203999999, "startIsMilestone": false, "endIsMilestone": false, "collapsed": false, "assigs": [], "hasChild": true},
	    {"id": -3, "name": "gantt part", "progress": 0, "progressByWorklog": false, "relevance": 0, "type": "", "typeId": "", "description": "", "code": "", "level": 2, "status": "STATUS_ACTIVE", "depends": "", "canWrite": true, "start": 1396994400000, "duration": 2, "end": 1397167199999, "startIsMilestone": false, "endIsMilestone": false, "collapsed": false, "assigs": [], "hasChild": false},
	    {"id": -4, "name": "editor part", "progress": 0, "progressByWorklog": false, "relevance": 0, "type": "", "typeId": "", "description": "", "code": "", "level": 2, "status": "STATUS_SUSPENDED", "depends": "3", "canWrite": true, "start": 1397167200000, "duration": 4, "end": 1397685599999, "startIsMilestone": false, "endIsMilestone": false, "collapsed": false, "assigs": [], "hasChild": false},
	    {"id": -5, "name": "testing", "progress": 0, "progressByWorklog": false, "relevance": 0, "type": "", "typeId": "", "description": "", "code": "", "level": 1, "status": "STATUS_SUSPENDED", "depends": "2:5", "canWrite": true, "start": 1398981600000, "duration": 5, "end": 1399586399999, "startIsMilestone": false, "endIsMilestone": false, "collapsed": false, "assigs": [], "hasChild": true},
	    {"id": -6, "name": "test on safari", "progress": 0, "progressByWorklog": false, "relevance": 0, "type": "", "typeId": "", "description": "", "code": "", "level": 2, "status": "STATUS_SUSPENDED", "depends": "", "canWrite": true, "start": 1398981600000, "duration": 2, "end": 1399327199999, "startIsMilestone": false, "endIsMilestone": false, "collapsed": false, "assigs": [], "hasChild": false},
	    {"id": -7, "name": "test on ie", "progress": 0, "progressByWorklog": false, "relevance": 0, "type": "", "typeId": "", "description": "", "code": "", "level": 2, "status": "STATUS_SUSPENDED", "depends": "6", "canWrite": true, "start": 1399327200000, "duration": 3, "end": 1399586399999, "startIsMilestone": false, "endIsMilestone": false, "collapsed": false, "assigs": [], "hasChild": false},
	    {"id": -8, "name": "test on chrome", "progress": 0, "progressByWorklog": false, "relevance": 0, "type": "", "typeId": "", "description": "", "code": "", "level": 2, "status": "STATUS_SUSPENDED", "depends": "6", "canWrite": true, "start": 1399327200000, "duration": 2, "end": 1399499999999, "startIsMilestone": false, "endIsMilestone": false, "collapsed": false, "assigs": [], "hasChild": false}
	  ], "selectedRow": 2, "deletedTaskIds": [],
	    "resources": [
	    {"id": "tmp_1", "name": "개발자 1"},
	    {"id": "tmp_2", "name": "Resource 2"},
	    {"id": "tmp_3", "name": "Resource 3"},
	    {"id": "tmp_4", "name": "Resource 4"}
	  ],
	    "roles":       [
	    {"id": "tmp_1", "name": "Project Manager"},
	    {"id": "tmp_2", "name": "Worker"},
	    {"id": "tmp_3", "name": "Stakeholder"},
	    {"id": "tmp_4", "name": "Customer"}
	  ], "canWrite":    true, "canDelete":true, "canWriteOnParent": true, canAdd:true};
  


	$(document).ready(function(){
		/* */
		//
		$("h1,table").attr("align","center");
		$("h1").html("간트 데이터 연습 처리^^");	
		$("#sndProc").click(function(){
			alert("서버에 넘길 데이터:"+JSON.stringify(ret));
			$.ajax({
				type:"post",
				url:"${path}/gantt.do?method=data",
				data:{"jdata":JSON.stringify(ret)},
				dataType:"json",
				success:function(data){
					alert(data.ok);	
				},
				error:function(err){
					console.log(err);
				}
			});
		});
		$("#revProc").click(function(){
			$.ajax({
				type:"post",
				url:"${path}/gantt.do?method=rev",
				dataType:"json",
				success:function(data){
					alert(data.list.length);
				},
				error:function(err){
					console.log(err)
				}
			});
		});
		
	});
</script>
</head>
<body>
<div class="container">
	<h1></h1>
	<table class="table table-hover table-striped">
		<thead class="thead-light">
			<tr><th>간트 처리1</th><td id="sndProc">서버전달(click)</td></tr>
			<tr><th>간트 처리2</th><td id="revProc">가져오기(click)</td></tr>
		</thead>
	</table>
</div>
<!-- 

 -->
</body>
</html>