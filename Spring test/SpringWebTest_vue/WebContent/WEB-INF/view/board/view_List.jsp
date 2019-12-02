<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE html>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.7/angular.js"></script> 
    
	
	
	
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>view_List.jsp</title>
    
    <script type="text/javascript">
        <%--
        $('input[name={{list.no}}]').attr('value', '{{mNo}}');
        $('input[name={{list.user}}]').attr('value', '{{mUser}}');
        $('input[name={{list.title}}]').attr('value', '{{mTitle}}');
        $('input[name={{list.date}}]').attr('value', '{{mDate}}'); 
        --%>
        
        <%--  
        $('input[name={{list.no}}]').attr('value', '{{list.mNo}}');
        $('input[name={{list.user}}]').attr('value', '{{list.mUser}}');
        $('input[name={{list.title}}]').attr('value', '{{list.mTitle}}');
        $('input[name={{list.date}}]').attr('value', '{{list.mDate}}');
        --%>
        
    </script>
    
    <style type="text/css">
        a {text-decoration: none}
    </style>
    
    
    <script src="https://code.jquery.com/jquery-3.4.1.js" ></script>
	<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js" ></script>	
    
    <script type="text/javascript">
        
	    $(document).ready(function(){	
	    	
	        new Vue({
	 	        el:"#app",
	 	        data: {
	 	        	vList: "${mList}",
	 	        	name: "홍길동"
	 	        }
	 	    });  
	    });
	    
	     
    </script>
    
</head>
<body>
    
    <h1>view_List.jsp</h1>
    
    
    ${mList }
    <div id="app">
        <h1>{{vList}}</h1>
        <h1>{{name}}</h1>
        ${mList }
    
    
    
	    <table width="500" cellpadding="0" cellspacing="0" border="1" >
	        <tr>
	            <th colspan="7">List</th>
	        </tr>	         
	        <tr>
	            <th>번호</th>
	            <th>글쓴이</th>
	            <th>타이틀 (클릭)</th> 
	            <th>날짜</th>
	            <th>삭제</th>
	            <th>수정</th>
	        </tr>	         
	        
	        <%-- list 는 tList 의 별칭과 같은 것 --%>
            
            <tr v-for="list in vList">
	            <td>{{list.no }}</td>
	            <td>{{list.user }}</td>
	            <td>
	                <a href="#" >{{list.title}}</a> 
	            </td>
	            <td>{{list.date }}</td>
	            <td >
	                <a href="#" >X</a> 
	            </td>
	            
	            <!-- modify 버튼 -->
	            <td >
	                <a href="#" >수정</a>
	            </td>
	        </tr>
	    </table>
	    
	    
	    
	    
	</div>
</body>
</html>