<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>

    <meta charset="UTF-8">
    <title>test_vue04.jsp</title>
</head>
<body>
    
    
    <h1>test_vue04.jsp</h1>
    
    <br><br><br>
    <div id="app4">
        <ol>
            <li v-for="todo in todos" >
                {{ todo.text }}
            </li>
        </ol>
    </div>
    
    <!-- 
    <script >
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
    </script>
    -->
    
    <!-- type="text/javascript" 가 빠지면 error 발생 -->
    <script type="text/javascript" src="/resources/js/test_vue.js"></script>
    
</body>
</html>