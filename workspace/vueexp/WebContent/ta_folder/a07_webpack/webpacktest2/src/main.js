import Vue from 'vue'
import App from './App.vue'
// 메인 component에 대한 선언
// import 컴포넌트이름 from '파일위치"
new Vue({
  el: '#app',
  // index.html에 있는 요소객체 id="app" 기준으로
  render: h => h(App)
  // App 컴포넌트를 랜더하여 출력 처리..
})
