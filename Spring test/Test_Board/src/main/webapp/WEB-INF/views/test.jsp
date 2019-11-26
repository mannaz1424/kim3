<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.7/angular.js"></script>    
	<script type="text/javascript" src="/resources/js/boardApp.js"></script>
	<script type="text/javascript" src="/resources/js/boardController.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div data-ng-app="boardApp" data-ng-controller="boardController" data-ng-init="selectContentList()">
	
		<div>{{number}}</div>
		<div>
			<button data-ng-click="addClick()">더하기</button>
		</div>
		
		
		<div>
			<table>
				<tr>
					<td>제목</td>
					<td>내용</td>
				</tr>
				<tr data-ng-repeat="list in contentList">
					<td>{{list.tcontent}}</td>
					<td>{{list.ttitle}}</td>
				</tr>
			</table>
		</div>
		
		<div data-ng-init="name = '(이름을 입력해 주세요.)'">
			<input data-ng-model="name">
			<p>나의 이름은 {{name}}</p>			
		</div>
		
		<div>
			<input data-ng-model="title" placeholder="제목">
			<input data-ng-model="content" placeholder="내용">
			<button data-ng-click="insertPost()">저장</button>
		</div>
	</div>
</body>
</html>