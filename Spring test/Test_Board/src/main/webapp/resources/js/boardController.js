'use strict';

boardApp.controller('boardController', boardController);

boardController.$inject = ['$rootScope','$scope','BoardService'];

function boardController($rootScope,$scope,BoardService){
	
	$scope.insertPost = function() {
		$scope.post.push({
				bno: 4
				,title : $scope.title
				,content : $scope.content
		});
	}
	
	
	
	$scope.selectContentList = function() {
		
		// param 은 jsp 로 부터 받아오는 Data 를 Ajax 로 변환시킨다.
		const param = { 
				ttitle: $scope.ttitle
				,tcontent : $scope.tcontent
		}
		
		BoardService.selectContentList(param).then(function(res) {
			console.log(res.contentList);
			
			$scope.contentList = res.contentList;
		})
	}
	
};