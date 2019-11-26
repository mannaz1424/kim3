'use strict';

var tApp = angular.module("tApp", []);

// 팩토리 정의
tApp.factory("TService", function($http){
	
	// 메서드 정의
	var service = {
			// controller 요청 : 실행 메서드
			tBoardList : tBoardListAjax,
			tContent: tContentAjax,
			insertPost : insertPostAjax,
			deletePost : deletePostAjax,
			contentPost : contentPostAjax,
			pagePost : pagePostAjax
			
	};
	
	return service;
	
	// 메서드 구현
	// db 에서 data 받아와서 jsp로 전송
	function tBoardListAjax(){
		return $http.get("tBoardList").then(handleSuccess, handleError);
	}
	
	function tContentAjax(){
		return $http.get("tContent").then(handleSuccess, handleError);
	}
	
	
	// jsp 로 부터 data 받아와서 controller 로 전송 
	function insertPostAjax(param){ 
		// controller 의 "/insertContent" 로 전송
		return $http.post("/insertContent", param).then(handleSuccess, handleError);
	}
	
	function deletePostAjax(param){
		return $http.post("/deleteContent", param).then(handleSuccess, handleError);
	}
	
	function contentPostAjax(param){
		return $http.post("/selectContent", param).then(handleSuccess, handleError);
	}
	
	function pagePostAjax(param){
		return $http.post("/selectPage", param).then(handleSuccess, handleError);
	}
	
	
	//////////////////////////////////////////////////////////////////////////
	
	// private functions
	function handleSuccess(res){
		return res.data;
	}
	
	function handleError(error){
		return function(){
			return {success: false, message: error};
		};
	}	
});