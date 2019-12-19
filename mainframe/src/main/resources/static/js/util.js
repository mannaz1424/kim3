var comm = function(){ 
	// 모달창 띄우기
	function openModal(className){
		$(className).modal({backdrop: 'static', keyboard: false}) ;
	}
  
	return {
		openModal: openModal
	 }
}()