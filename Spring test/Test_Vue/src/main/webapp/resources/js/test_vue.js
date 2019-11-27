
/* 01 */
new Vue({
	el: '#app01',
	data: {
		message: 'hello Vue.js!',
		me: 'hi~~~~'
	}
})

/* 변수명을 사용할 경우 동일 변수명을 다음에 사용하면 error 가 발생될 수 있다.
가급적 변수명 사용하지 말고 그냥 new Vue 로 사용 할 것 */
var app = new Vue({
  el: '#app02',
  data: {
	  message: 'hi~~~~~~~~~~ Vue.js'
  }
})

new Vue({
  el: '#app03',
  data: {
	  message: '안녕하세요 Vue!'
  }
})




/* 02 */
new Vue({
  el: '#app2',
  data: {
	  message: '이 페이지는 ' + new Date() + ' 에 로드 되었습니다.'
  }
})



/* 03 */
new Vue({
  el: '#app3',
  data: {
	  // seen: false 
	  seen: true
  }
})


/* 04 */
new Vue({
	el: '#app4',
	data: {
		todos: [
			{ text: 'JavaScript 배우기'},
		    { text: 'Vue 배우기'},
		    { text: '무언가 멋진 것을 만들기'}
        ]  
    }
})



/* 05 */
new Vue({
	el: '#app5',
	data: {
		message: '안녕하세요! Vue.js!'
    },
    methods: {
    	reverseMessage: function(){
    		this.message = this.message.split('').reverse().join('')
    	}
    }
})


/* 06 */
new Vue({
	el: '#app6',
	data: {
		message: '안녕하세요! Vue!'
    }
})



/* 07 */
Vue.component('todo-item', {
	// 이제 todo-item 컴포넌트는 "prop" 이라고 하는
	// 사용자 저의 속성 같은 것을 입력받을 수 있습니다.
	// 이 prop 는 todo 라는 이름으로 정의 했습니다.
	props: ['todo'],
//	template: '<li> 할일 항목 하나입니다. </li>'
	template: '<li>{{ todo.text }}</li>'
})

new Vue({
	el: '#app7',
	data: {
		groceryList: [
			{ id: 0, text: 'Vegetables' },
	        { id: 1, text: 'Cheese' },
	        { id: 2, text: 'Whatever else humans are supposed to eat' },	
			{ id: 3, text: '안녕하세요! Vue!' }
		] 
    }
})


/* 08 */
//todo-item 이름을 가진 컴포넌트를 정의합니다
Vue.component('todo-item', {
  template: '<li>할일 항목 하나입니다.</li>'
})

new Vue()

//new Vue({
////	el: '#app7',
////	data: {
////		groceryList: [
////			{ id: 0, text: 'Vegetables' },
////	        { id: 1, text: 'Cheese' },
////	        { id: 2, text: 'Whatever else humans are supposed to eat' },	
////			{ id: 3, text: '안녕하세요! Vue!' }
////		] 
////    }
//})
















