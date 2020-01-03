// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
//import App from './AppAxiosTest'
// axios lib 선언
import axios from 'axios';
require('es6-promise').polyfill();
// Vue 객체에 prototype으로 $axios로 사용 선언..
Vue.prototype.$axios = axios;
Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  el: '#app',
  template: '<App/>',
  components: { App }
})
