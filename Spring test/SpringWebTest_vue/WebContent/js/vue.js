
var router1 = new VueRouter({
	routes: [
		{
			path: '/tBoardList'
		}
	]
});

Vue.component({
	props: ['todo']
})

new Vue({
	el:'#app',
	data: {
		
	},
	router: router1
});