<template>
    <!-- 
    템플릿이라는 속성은 html 엘리멘트가 최상위 레벨에 1개만 있어야 함.
    즉 el:  에 연결된 div 가 1개여야지 여러개의 div 를 만들면 안된다는 의미임.
    -->
    <div>
      <!-- <app-header v-bind:프롭스 속성 이름="상위 컴포넌트의 데이터 이름">
      </app-header> -->
      <app-header 
          v-bind:propsdata="str"
          v-on:renew="renewStr" ></app-header>

      {{str}}
    </div>
  
</template>

<script>
// import  의 경우에는 확장자까지 붙여주어야 vs 코드에서 
// 파일 바록가기를 error 가 발생되지 않고 사용할 수 있다. 
// AppHeader 는 변수이고  AppHeader.vue 파일의 내용이 변수에 
// 담겼다는 의미임.
import AppHeader from './components/AppHeader.vue';
// var AppHeader = {
//   template: '<header><h1>Header</h1></header>'
// }

// new Vue({
//   data: {
//     str: 'hi'    
//   }
// });

export default {
  data: function() {
    return {
      str: 'header'
    }
  },
  components: {
    'app-header': AppHeader
  },
  methods: {
    renewStr: function(){
      this.str = 'hi';

    }

  }
}
</script>

<style>

</style>