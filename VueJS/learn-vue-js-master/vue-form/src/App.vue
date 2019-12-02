<template>
  <form v-on:submit.prevent="submitForm">
   <div>
     <label for="username">id: </label>
     <input id="username" type="text" v-model="username">
   </div>
   <div>
     <label for="password">pw: </label>
     <input id="password" type="password" v-model="password">
   </div>
   <button type="submit">login</button>
  </form>
</template>

<script>
import axios from 'axios';
export default {
  data: function(){
    return {
      username: '',
      password: ''
    }
  },
  methods: {
    submitForm: function() {
    // submitForm: function(event) {
      // event.preventDefault();

      /*jslint devel: true */
      /* eslint-disable no-console */
      console.log(this.username, this.password);

      var url = 'https://jsonplaceholder.typicode.com/users';
      var data = {
        username: this.username,
        password: this.password
      }

      // axios 는 http 프로토콜을 이용한 http 통신 라이브러리 이다.
      // axios 는 브라우저에서 서버로 데이터를 주고 받기 위한 
      // 라이브러리 이다.
      // post 데이터를 생성하거나 조작할때 사용하는 
      // http 방법, 메서드 이다.
      axios.post(url, data)
           .then(function(response){
             console.log(response);             
           })
           .catch(function(error){
             console.log(error);             
           });
    }
  }
}
</script>

<style>

</style>