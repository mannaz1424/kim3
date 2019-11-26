<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE html>
<html>
<head>
   <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.7/angular.js"></script>     
	
	<script type="text/javascript" src="/resources/js/tApp.js"></script>
	<script type="text/javascript" src="/resources/js/tController.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>view_List.jsp</title>
</head>
<body>
    <div data-ng-app="tApp" data-ng-controller="tController" data-ng-init="tBoardList()">

	    <table width="500" cellpadding="0" cellspacing="0" border="1" >
	        <tr>
	            <th colspan="6">List</th>
	        </tr>
	         
	        <tr>
	            <th>번호</th>
	            <th>이름</th>
	            <th>타이틀 (클릭)</th>             
	            <th>확인 회수</th>
	            <th>날짜</th>
	            <th>삭제</th>
	        </tr>
	         
	        
	        <%-- list 는 tList 의 별칭과 같은 것 --%>
            <tr data-ng-repeat="list in mList">
	            <td>{{list.tnum }}</td>
	            <td>{{list.userid }}</td>
	            <td>
	             
	                <!--  에러 발생 
	                <a href="view_content?num={{list.tnum}}"  data-ng-click="tContent()">{{list.ttitle}}</a>
	                -->
	                <a href="view_Content?num={{list.tnum}}"  >{{list.ttitle}}</a>
	            </td>
	            <td>{{list.thit }}</td>
	            <td>{{list.tdate }}</td>
	            <td>
	                <a href="delete?num={{list.tnum}}">X</a>
	            </td>
	        </tr>
	         
        </table> 
	
	
	    <br><br><br><br>
	
		<table width="500" cellpadding="0" cellspacing="0" border="1">
	        <form action="writeOk" method="get" >
	            <tr>
	                <th colspan="2">
	                    Add 
	                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                    <input type="submit" value="입력">
	                </th>
	            </tr>
	            <tr>
	                <th> 작성자 </th>
	                <td> 
	                    <!-- <input type="text" name="user" placeholder="${mUser }" readonly> -->
	                    <input type="text" name="user" placeholder="${mUser }" >
	                </td>
	            </tr>
	            
	            <tr>
	                <th> 타이틀 </th>
	                <td> 
	                    <input type="text" name="title"  >
	                </td>
	            </tr>
	            
	            <tr>
	                <th> 내용 </th>
	                <td> 
	                    <input type="text" name="content" data-ng-model="tcontent">
	                </td>
	            </tr>
	        </form>
	    </table> 
	    
	    
	    <br><br><br><br>
	    
	   
	    <div data-ng-init="tContent()">
		     <table width="500" cellpadding="0" cellspacing="0" border="1" data-ng-repeat="list in mContent">
		         <tr>
		             <th colspan="2">Content</th>
		         </tr>
		         <tr>
		             <th>번호</th>
		             <td>{{list.tnum }}</td>
		         </tr>
		         <tr>
		             <th>이름</th>
		             <td>{{list.userid }}</td>
		         </tr>
		         <tr>
		             <th>타이틀</th>
		             <td>{{list.ttitle}}</td>
		         </tr>
		         <tr>
		             <th>내용</th>
		             <td>{{list.tcontent }}</td>
		         </tr>
		         <tr>
		             <th>확인 회수</th>
		             <td>{{list.thit }}</td>
		         </tr>
		         <tr>
		             <th>날짜</th>
		             <td>{{list.tdate }}</td>
		         </tr>		         
		     </table> 
		</div>		
	
	</div>
	
</body>
</html>