<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>

    <meta charset="UTF-8">
    <title>test_vue03.jsp</title>
</head>
<body>
    
    
    <h1>test_vue03.jsp</h1>
    
    <br><br><br>
    <div id="app3">
        <p v-if="seen" >  
            이제 나를 볼 수 있어요
        </p>
    </div>
    
    
    
    <!-- type="text/javascript" 가 빠지면 error 발생 -->
    <script type="text/javascript" src="/resources/js/test_vue.js"></script>
    
    <!--  
    <script >
        new Vue({
    	  el: '#app3',
    	  data: {
    		  // seen: false 
    		  seen: true
    	  }
    	})
    </script>
    -->
</body>
</html>