<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE html>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.7/angular.js"></script> 
	<script type="text/javascript" src="/resources/js/tApp.js"></script>
	<script type="text/javascript" src="/resources/js/tController.js"></script>
	
	<!-- input date 적용 css -->  
	<link rel="stylesheet" type="text/css" href="/resources/css/view_List.css">
	
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>view_List.jsp</title>
    
    <script type="text/javascript">
        $('input[name={{list.tnum}}]').attr('value', '{{mnum}}');
        $('input[name={{list.userid}}]').attr('value', '{{muserid}}');
        $('input[name={{list.ttitle}}]').attr('value', '{{mtitle}}');
        $('input[name={{list.tcontent}}]').attr('value', '{{mcontent}}');
        $('input[name={{list.tdate}}]').attr('value', '{{mdate}}'); 
        
        <%-- 
        $('input[name={{list.tnum}}]').attr('value', '{{list.tnum}}');
        $('input[name={{list.userid}}]').attr('value', '{{list.userid}}');
        $('input[name={{list.ttitle}}]').attr('value', '{{list.ttitle}}');
        $('input[name={{list.tcontent}}]').attr('value', '{{list.tcontent}}');
        $('input[name={{list.tdate}}]').attr('value', '{{list.tdate}}');
        --%>
    </script>
    
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
	            <th>이름</th>
	            <th>타이틀 (클릭)</th>             
	            <th>확인 회수</th>
	            <th>날짜</th>
	            <th>삭제</th>
	            
	            
	            <th>수정</th>
	        </tr>	         z
	        
	        <%-- list 는 tList 의 별칭과 같은 것 --%>
            <tr data-ng-repeat="list in mList">
	            <td>{{list.tnum }}</td>
	            <td>{{list.userid }}</td>
	            <td>
	                <a href="#"  data-ng-click="contentPost(list.tnum)">{{list.ttitle}}</a>
	            </td>
	            <td>{{list.thit }}</td>
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
	            <td colspan="7" style="text-align: center;">
	            
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
            <tr>
                <th> 내용 </th>
                <td> 
                    <input type="text" name="content" id="content" data-ng-model="tcontent"
                           placeholder="내용을 입력하세요">
                </td>
            </tr>
            
            <!-- input date picker 사용 -->            
            <tr>
                <th> 날짜 </th>
                <td> 
                    <input type="date" name="date" id="date" data-ng-model="tdate"
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
	    
	    
	    <!-- view_Content 기능 -->
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
                    <input type="number" name="num" id="num" data-ng-model="mnum" 
                           value="{{list.tnum}}" readonly>
                </td>
            </tr> 
            <tr>
                <th> 작성자 </th>
                <td>
                    <input type="text" name="user" id="user" data-ng-model="muserid" 
                           value="{{list.userid}}" >
                </td>
            </tr>            
            <tr>
                <th> 타이틀 </th>
                <td> 
                    <input type="text" name="title" id="title" data-ng-model="mtitle"
                           value="{{list.ttitle}}" >
                </td>
            </tr>            
            <tr>
                <th> 내용 </th>
                <td> 
                    <input type="text" name="content" id="content" data-ng-model="mcontent"
                           value="{{list.tcontent}}" >
                </td>
            </tr>
            
            <!-- input date picker 사용 -->            
            <tr>
                <th> 날짜 </th>
                <td> 
                    <input type="date" name="date" id="date" data-ng-model="mdate"
                           value="{{list.tdate}}" >
                </td>
            </tr>
            <tr>
                <th> 버튼 </th>
                <td> 
                    <button data-ng-click="updatePost()" >수정</button>
                </td>
            </tr>
	    </table> 
	</div>
	<br><br><br><br>   
	 --%>   
	    
	    
        <table width="500" cellpadding="0" cellspacing="0" border="1" data-ng-repeat="list in mModify">
	        <tr>
                <th colspan="2">
                    Modify                   
                </th>
            </tr>
            <tr>
                <th> 번호 </th>
                <td>
                    <input type="number" name="mnum" id="mnum" data-ng-model="mnum" 
                           placeholder="{{list.tnum}}" readonly>
                </td>
            </tr> 
            <tr>
                <th> 작성자{{mUserId}} </th>
                <td>
                    <input type="text" name="mUserId" id="mUserId" data-ng-model="mUserId" 
                           placeholder="{{list.userid}}" >
                </td>
            </tr>            
            <tr>
                <th> 타이틀 </th>
                <td> 
                    <input type="text" name="mtitle" id="mtitle" data-ng-model="mtitle"
                           placeholder="{{list.ttitle}}" >
                </td>
            </tr>             
            <tr>
                <th> 내용 </th>
                <td> 
                    <input type="text" name="mcontent" id="mcontent" data-ng-model="mcontent"
                           placeholder="{{list.tcontent}}" >
                </td>
            </tr>
            
            <!-- input date picker 사용 -->            
            <tr>
                <th> 날짜 </th>
                <td> 
                    <input type="date" name="mdate" id="mdate" data-ng-model="mdate"
                           placeholder="{{list.tdate}}" >
                </td>
            </tr>
            <tr>
                <th> 버튼 </th>
                <td> 
                    <button data-ng-click="updatePost(list.tnum, mUserId, mtitle, mcontent, mdate)" >수정</button>
                </td>
            </tr>
	    </table> 
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