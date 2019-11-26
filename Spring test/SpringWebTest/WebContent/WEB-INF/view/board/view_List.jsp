<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE html>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.7/angular.js"></script> 
    
	<script type="text/javascript" src="/js/tApp.js"></script>
	<script type="text/javascript" src="/js/tController.js"></script>
	
	
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
    
</head>
<body data-ng-app="tApp" data-ng-controller="tController" >
    
    <h1>view_List.jsp</h1>
    
    <div data-ng-init="tBoardList()">
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
            <tr data-ng-repeat="list in mList">
	            <td>{{list.no }}</td>
	            <td>{{list.user }}</td>
	            <td>
	                <a href="#" data-ng-click="contentPost(list.no)">{{list.title}}</a> 
	            </td>
	            <td>{{list.date }}</td>
	            <td >
	                <a href="#" data-ng-click="deletePost(list.no)">X</a> 
	            </td>
	            
	            <!-- modify 버튼 -->
	            <td >
	                <a href="#" data-ng-click="modifyPost(list.no)">수정</a>
	            </td>
	        </tr>
	        
	        
	         
	        <tr data-ng-init="pagePost(1)">
	            <td colspan="6" style="text-align: center;">
	            
	                <%-- 처음 --%>
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
                   <span data-ng-repeat="index in getNumberArr(pDto.nStartPage , pDto.nEndPage)" >
                       <a href="#" data-ng-click="pagePost(index)" 
                                   data-ng-style="getStyle(pDto.iCurPage, index)">{{index}}</a>
                   </span>
                    
                    <%-- 다음 --%>
                    <c:choose>
                        <c:when test="{{(pDto.iCurPage+ 1) > pDto.totalPage}}">
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
                            <a href="#" data-ng-click="pagePost(pDto.totalPage)">
                                [ &gt;&gt; ]
                            </a>
                        </c:otherwise>
                    </c:choose>
	            </td>	
	        </tr>         
        </table> 
	    <br><br><br><br>
	    
	    
	
	    <!-- insert 기능 -->  
		<table width="500" cellpadding="0" cellspacing="0" border="1">
            <tr>
                <th colspan="2">
                    Add                    
                </th>
            </tr>            
            <tr>
                <th> 작성자 </th>
                <td>
                    <input type="text" name="user" id="user" data-ng-model="user" 
                           placeholder="USER 명을 입력하세요">
                </td>
            </tr>            
            <tr>
                <th> 타이틀 </th>
                <td> 
                    <input type="text" name="title" id="title" data-ng-model="title"
                           placeholder="타이틀을 입력하세요">
                </td>
            </tr> 
            
            <!-- input date picker 사용 -->       
            <tr>
                <th> 날짜 </th>
                <td> 
                    <input type="date" name="date" id="date" data-ng-model="date"
                           placeholder="날짜를 선택하세요">
                </td>
            </tr>
            <tr>
                <th> 버튼 </th>
                <td> 
                    <!-- <button data-ng-click="insertPost(user, title, date)" >저장</button> -->
                    <button data-ng-click="insertPost()" >저장</button>
                </td>
            </tr>
	    </table>
	    <br><br><br><br>   
	    
	    
	    <!-- view_Content 기능 --> 
	    <table width="500" cellpadding="0" cellspacing="0" border="1" data-ng-repeat="list in mContent">
	        <tr>
	            <th colspan="2">Content</th>
	        </tr>
	        <tr>
	            <th>번호</th>
	            <td>{{list.no }}</td>
	        </tr>
	        <tr>
	            <th>이름</th>
	            <td>{{list.user }}</td>
	        </tr>
	        <tr>
	            <th>타이틀</th>
	            <td>{{list.title}}</td>
	        </tr>
	        <tr>
	            <th>날짜</th>
	            <td>{{list.date }}</td>
	        </tr>		         
	    </table> 
	    <br><br><br><br>
	      
	    
	    
	    <%--  modify 기능 넣을 것  
	    <table width="500" cellpadding="0" cellspacing="0" border="1" data-ng-repeat="list in mModify">
	        <tr>
                <th colspan="2">
                    Modify                   
                </th>
            </tr>
            <tr>
                <th> 번호 </th>
                <td>
                    <input type="number" name="num" id="num" data-ng-model="mNo" 
                           value="{{list.no}}" readonly>
                </td>
            </tr> 
            <tr>
                <th> 작성자 </th>
                <td>
                    <input type="text" name="user" id="user" data-ng-model="mUser" 
                           value="{{list.user}}" >
                </td>
            </tr>            
            <tr>
                <th> 타이틀 </th>
                <td> 
                    <input type="text" name="title" id="title" data-ng-model="mTitle"
                           value="{{list.title}}" >
                </td>
            </tr>            
            --%>
            
            <!-- input date picker 사용           
            <tr>
                <th> 날짜 </th>
                <td> 
                    <input type="date" name="date" id="date" data-ng-model="mDate"
                           value="{{list.date}}" >
                </td>
            </tr>
            <tr>
                <th> 버튼 </th>
                <td> 
                    <button data-ng-click="updatePost(list.no, mUser, mTitle, mDate)" >수정</button>
                </td>
            </tr>
	    </table> 
	</div>
	<br><br><br><br>   
	-->   
	    
	    <!-- model 안에 Data 넣도록 수정 할 것 --> 
        <table width="500" cellpadding="0" cellspacing="0" border="1" data-ng-repeat="list in mModify">
	        <tr>
                <th colspan="2">
                    Modify                   
                </th>
            </tr>
            <tr>
                <th> 번호 </th>
                <td>
                    <input type="number" name="num" id="num" data-ng-model="mNo" 
                           placeholder="{{list.no}}" readonly>
                </td>
            </tr> 
            <tr>
                <th> 작성자{{mUserId}} </th>
                <td>
                    <input type="text" name="user" id="user" data-ng-model="mUser" 
                           placeholder="{{list.user}}" >
                </td>
            </tr>            
            <tr>
                <th> 타이틀 </th>
                <td> 
                    <input type="text" name="title" id="title" data-ng-model="mTitle"
                           placeholder="{{list.title}}" >
                </td>
            </tr>   
            
            <!-- input date picker 사용 -->        
            <tr>
                <th> 날짜 </th>
                <td> 
                    <input type="date" name="date" id="date" data-ng-model="mDate"
                           placeholder="{{list.date}}" >
                </td>
            </tr>
            <tr>
                <th> 버튼 </th>
                <td> 
                    <button data-ng-click="updatePost(list.no, mUser, mTitle, mDate)" >수정</button>
                </td>
            </tr>
	    </table> 
	</div>
	<br><br><br><br>   
	    
	   
	
	<div style="text-align: left; margin-left:50px;" >
	    LIST_COUNT : {{pDto.listCount }}<br/>
	    PAGE_COUNT : {{pDto.pageCount }}<br/>
	    I_TOTAL_COUNT : {{pDto.iTotalCount }}<br/>
	    TOTAL_PAGE : {{pDto.totalPage }}<br/>
	    I_CUR_PAGE : {{pDto.iCurPage }}<br/>
	    nStart : {{pDto.nStart }}<br/>
	    nEnd : {{pDto.nEnd }}<br/>
	    nStartPage : {{pDto.nStartPage }}<br/>	
	    nEndPage : {{pDto.nEndPage }}<br/>
	</div>  
	
</body>
</html>