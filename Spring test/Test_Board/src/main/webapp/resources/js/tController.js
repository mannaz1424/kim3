'use strict';

tApp.controller('tController', tController);

tController.$inject = ['$rootScope', '$scope', 'TService'];

function tController($rootScope, $scope, TService){
	$scope.tBoardList = function(){
		
		// (jsp 에서 받아오는 list).then(jsp로 보내는 list)
		// TService.tBoardList(param).then(function(res){
		TService.tBoardList().then(function(res){
			
			// res.__ controller 에서 보내는 키값과 동일해야 한다.
			console.log(res.mList);
			
			// scope.__, res.__ controller 에서 보내는 키값과 동일해야 한다.
			$scope.mList = res.mList;
		});
	}
	
	
	// var = service 의 insertPost : insertPostAjax
	
	$scope.insertPost = function(){
		// param 은 jsp 로 부터 받아오는 Data 를 Ajax 로 변환시킨다.
		// const 상수, var 변수
		const param = {
				userid: $scope.userid,
				ttitle: $scope.ttitle,
				tcontent: $scope.tcontent,
				tdate : $scope.tdate
		}
		TService.insertPost(param).then(function(res) {
			console.log(res);
			alert(res.resultMsg);
			
			if(res.result == 'ok') {
				$scope.tBoardList();
				$scope.pagePost();
			}
		});
	}
	
	$scope.deletePost = function(tnum){
		const param = {
				tnum: tnum
		}
		TService.deletePost(param).then(function(res) {
			console.log(res);
			alert(res.resultMsg);
			
			if(res.result == 'ok') {
				$scope.tBoardList();
				$scope.pagePost();
			}
		});
	}
	
	$scope.contentPost = function(tnum){
		const param = {
				tnum: tnum
		}
		TService.contentPost(param).then(function(res){
			console.log(res);
			alert(res.resultMsg);
			
			if(res.result == 'ok'){
				$scope.tBoardList();
			}
			
			console.log(res.mContent);
			$scope.mContent = res.mContent;
		});
	}
	
	
	
	
//	$scope.selectContent = function(){
//		TService.tContent().then(function (res){
//			alert(res.resultMsg);
//			
//			if(res.result == 'ok') {
//				$scope.tBoardList();
//			}
//			
//			console.log(res.mContent);
//			$scope.mContent = res.mContent;
//			
//		});		
//	}
	
	
	$scope.pagePost = function(curPage){
		const param = {
				curPage: curPage
		}
		
		TService.pagePost(param).then(function(res){
			// alert(res.resultMsg);
			
			if(res.result == 'ok'){
				$scope.tBoardList();
			}
			
			console.log(res.mPageCount);
			// $scope.pBean = res;
			
			$scope.pDto = res.pDto;
			
			$scope.mListCount = res.mListCount;
			$scope.mPageCount = res.mPageCount;
			$scope.mTotalCount = res.mTotalCount;
			$scope.mTotalPage = res.mTotalPage;			
			$scope.mCurPage = res.mCurPage;
			$scope.mStart = res.mStart;
			$scope.mEnd = res.mEnd;
			$scope.mStartPage = res.mStartPage;
			$scope.mEndPage = res.mEndPage;			
		});
	}
	
	
	
	$scope.getNumberArr = function(start, end) {
		let arr = [];
		for(let i=start; i<=end; i++) {
			arr.push(i);
		}
		
		return arr;
	}
	
	$scope.getStyle = function(curPage, index) {
		if(curPage == index) {
			return {
				"color" : "pink"
				,"font-size" : "25px"
				,"font-weight" : "750"
			}
		}else {
			return;
		}		
	}

	$scope.modifyPost = function(tnum){
		const param = {
				tnum: tnum
		}
		TService.modifyPost(param).then(function(res){
			console.log(res);
			alert(res.resultMsg);
			
			if(res.result == 'ok'){
//					$scope.tBoardList();
//					$scope.pagePost();
			}
			
			console.log(res.mModify);
			$scope.mModify = res.mModify;
		});
	}
	
	$scope.updatePost = function(mnum, mUserId, mtitle, mcontent, mdate){
		
//		console.log(mUserId);
//		console.log($scope.mUserId);
		
		const param = {
				tnum: mnum,
				userid: mUserId,
				ttitle: mtitle,
				tcontent:mcontent,
				tdate: mdate
				
//				tnum: 2,
//				userid: '3',
//				ttitle: '3',
//				tcontent: '3',
//				tdate: '3'
		}
		TService.updatePost(param).then(function(res) {
			console.log(res);
			alert(res.resultMsg);
			
			if(res.result == 'ok') {
				$scope.tBoardList();
				$scope.pagePost();
			}
		});
	}
	
	
}