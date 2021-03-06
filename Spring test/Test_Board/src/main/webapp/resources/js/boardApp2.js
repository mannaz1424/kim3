'use strict';

var boardApp = angular.module("boardApp", []);

//팩토리 정의
boardApp.factory("BoardService",function($http){

    //메서드 정의
    var service = {
    		selectContentList : selectContentListAjax
    		,insertContent : insertContentAjax
    };
    
    return service;
    
    //메서드 구현
    function selectContentListAjax() {
        return $http.get("/selectContentList").then(handleSuccess, handleError);
    }
    
    function insertContentAjax(param) {
    	return $http.post("/insertContentAjax", param).then(handleSuccess, handleError);
    }
    
    /*function thirdLoginAjax(url,param){
        return $http.post(url).then(handleSuccess,handleError);
    }*/
/**********************************************************************************************************************/    
    //private functions
    function handleSuccess(res){
        return res.data;
    }
    
    function handleError(error){
        return function(){
            return {success: false, message: error};
        };
    }
    
});