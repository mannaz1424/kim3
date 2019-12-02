import Vue from 'vue'
import App from './App.vue'

Vue.config.productionTip = false

new Vue({
  render: h => h(App),
}).$mount('#app')


// var App = {
//   template: '<div>app<</div>'
// }
// new Vue({
//   el: '#app',
//   render: h => h(App),
//   components: {
//     'app': App
//   }
// })