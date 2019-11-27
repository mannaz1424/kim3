<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>

    <meta charset="UTF-8">
    <title>test_vue02.jsp</title>
</head>
<body>
    
    
    <h1>test_vue02.jsp</h1>
    
    <br><br><br>
    <div id="app2">
        <!-- v-bind:title="message" 에서 v-bind: 뒤에 빈칸이 있으면 error 가 발생된다.  -->
        <span v-bind:title="message" >  
            내 위에 잠시 마우스를 올리면 동적으로 바인딩 된 title 을 볼 수 있습니다!
        </span>
    </div>
    
    
    
    <!-- type="text/javascript" 가 빠지면 error 발생 -->
    <script type="text/javascript" src="/resources/js/test_vue.js"></script>
    
    <!--  
    <script >
        new Vue({
    	  el: '#app2',
    	  data: {
    		  message: '이 페이지는 ' + new Date() + ' 에 로드 되었습니다.'
    	  }
    	})
    </script>
    -->
    
</body>
</html>