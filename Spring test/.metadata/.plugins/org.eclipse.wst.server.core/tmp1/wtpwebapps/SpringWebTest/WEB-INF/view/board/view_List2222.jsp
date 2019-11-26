<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE html>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.7/angular.js"></script>    
	<script type="text/javascript" src="/resources/js/tApp.js"></script>
	<script type="text/javascript" src="/resources/js/tController.js"></script>
	
	
	<!-- datepicker  jQuery UI CSS파일 -->
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
    <!-- jQuery 기본 js파일 -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
    <!-- jQuery UI 라이브러리 js파일 -->
    <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>  
    
	
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>view_List.jsp</title>
    
    <script type="text/javascript">
        $(function(){
        	$("#date").datepicker({});
        });
    </script>
</head>
<body data-ng-app="tApp" data-ng-controller="tController" >
    
    <h1>view_List.jsp</h1>
    
    <div data-ng-init="tBoardList()">

	    <table width="500" cellpadding="0" cellspacing="0" border="1" >
	        <tr>
	            <th colspan="6">List</th>
	        </tr>
	         
	        <tr>
	            <th>번호</th>
	            <th>타이틀 (클릭)</th>
	            <th>이름</th> 
	            <th>날짜</th>
	            <th>삭제</th>
	            <th>수정</th>
	        </tr>	         
	        
            <tr data-ng-repeat="list in mList">
	            <td>{{list.tnum }}</td>
	            <td>
	                <a href="#"  data-ng-click="contentPost(list.tnum)">{{list.ttitle}}</a>
	            </td>
	            <td>{{list.userid }}</td>
	            <td>{{list.tdate }}</td>	            
	            <td >
	                <a href="#" data-ng-click="deletePost(list.tnum)">X</a>
	            </td>
	            
	            
	            
	            
	            
	            <!-- modify 버튼 구현 할 것 -->
	            <td >
	                <a href="#" data-ng-click="modifyPost(list.tnum)">수정</a>
	            </td>
	        </tr>
	        
	        
	        
	        
	        
	        <tr data-ng-init="pagePost(1)">
	            <td colspan="6" style="text-align: center;">
	            	            
	                <%-- 처음 --%>	                    
	                </span >
                    <c:choose>
                        <c:when test="({{pDto.iCurPage}} -1) < 1">
                            [ &lt;&lt; ] &nbsp;
                        </c:when>
                        <c:otherwise>
                            <a href="#" data-ng-click="pagePost(1)" >    
                                [ &lt;&lt; ]
                            </a> &nbsp;
                        </c:otherwise>
                    </c:choose> 
                    
                    <%-- 이전 --%>
                    <c:choose>
                        <c:when test="({{pDto.iCurPage}} -1) < 1">
                            [ &lt; ] &nbsp;
                        </c:when>
                        <c:otherwise>
                            <a href="#" data-ng-click="pagePost(pDto.iCurPage - 1)">
                                [ &lt; ]
                            </a> &nbsp;
                        </c:otherwise>
                    </c:choose>
                    
                    <%-- 개별 페이지 --%>
                   <span data-ng-repeat="index in getNumberArr(mStartPage, mEndPage)" >
                       <a href="#" data-ng-click="pagePost(index)" 
                                   data-ng-style="getStyle(mCurPage, index)">{{index}}</a>
                   </span>
                    
                    <%-- 다음 --%>
                    <c:choose>
                        <c:when test="{{(pDto.iCurPage+ 1) > mTotalPage}}">
                            [ &gt; ] &nbsp;
                        </c:when>
                        <c:otherwise>
                            <a href="#" data-ng-click="pagePost(pDto.iCurPage + 1)">
                                [ &gt; ]
                            </a> &nbsp;
                        </c:otherwise>
                    </c:choose>
                    
                    <%-- 끝 --%>
                    <c:choose>
                        <c:when test="{{pDto.iCurPage}} == {{pDto.totalPage}}">
                            [ &gt;&gt; ] 
                        </c:when>
                        <c:otherwise>
                            <a href="#" data-ng-click="pagePost(mTotalPage)">
                                [ &gt;&gt; ]
                            </a>
                        </c:otherwise>
                    </c:choose>
	            </td>	         
        </table>	
	    <br><br><br><br>
	    
	    
	
		<table width="500" cellpadding="0" cellspacing="0" border="1">
            <tr>
                <th colspan="2">
                    Add                    
                </th>
            </tr>
            <tr>
                <th> 작성자 </th>
                <td>
                    <input type="text" name="user" id="user" data-ng-model="userid" 
                           placeholder="USER 명을 입력하세요">
                </td>
            </tr>            
            <tr>
                <th> 타이틀 </th>
                <td> 
                    <input type="text" name="title" id="title" data-ng-model="ttitle"
                           placeholder="타이틀을 입력하세요">
                </td>
            </tr> 
            
            
            
            
            
            <!-- date picker 사용해서 구현 할 것 -->            
            <tr>
                <th> 날짜 </th>
                <td> 
                    <input type="text" name="date" id="date" data-ng-model="tdate"
                           placeholder="날짜를 선택하세요">
                </td>
            </tr>
            
            
            
            <tr>
                <th> 버튼 </th>
                <td> 
                    <button data-ng-click="insertPost()" >저장</button>
                </td>
            </tr>
	    </table> 
	    <br><br><br><br>
	    
	   
	   
	   
	   
	   
	   
	   
	   <!-- modify 기능 넣을 것 -->
	   <div >
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
		             <th>날짜</th>
		             <td>{{list.tdate }}</td>
		         </tr>		         
		     </table> 
		</div>
	   
	   
	   
	   
	   
	   
	    <div >
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
		             <th>날짜</th>
		             <td>{{list.tdate }}</td>
		         </tr>		         
		     </table> 
		</div>
	</div>
	
	
	<br><br><br><br>
	<div style="text-align: left; margin-left:50px;" >
	    LIST_COUNT : {{mListCount }}<br/>
	    PAGE_COUNT : {{mPageCount }}<br/>
	    I_TOTAL_COUNT : {{mTotalCount }}<br/>
	    TOTAL_PAGE : {{mTotalPage }}<br/>
	    I_CUR_PAGE : {{mCurPage }}<br/>
	    nStart : {{mStart }}<br/>
	    nEnd : {{mEnd }}<br/>
	    nStartPage : {{mStartPage }}<br/>	
	    nEndPage : {{mEndPage }}<br/>
	</div>
	
</body>
</html>