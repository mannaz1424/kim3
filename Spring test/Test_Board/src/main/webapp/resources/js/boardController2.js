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
		
		const param = { 
				
		}
		
		BoardService.selectContentList(param).then(function(res) {
			console.log(res.contentList);
			
			$scope.contentList = res.contentList;
		})
	}
	
};