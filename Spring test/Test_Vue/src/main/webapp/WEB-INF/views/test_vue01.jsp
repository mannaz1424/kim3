<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- 
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    -->  
    <script src="https://cdn.jsdelivr.net/npm/vue"></script>
   
    <meta charset="UTF-8">

    <title>test_vue01.jsp</title>
    
    
    
</head>
<body>


    <h1>test_vue01.jsp</h1>
    
    <br><br><br>
    <div id="app01">
        {{ message }}
        <br>
        {{ me }}
    </div>
    
    <div id="app02">
        {{ message }}
    </div>
    
    <div id="app03">
        {{ message }}        
    </div>
    
    
    
    <!-- type="text/javascript" 가 빠지면 error 발생 -->
    <script type="text/javascript" src="/resources/js/test_vue.js"></script>
    
    
    <%-- 
    <script >
        new Vue({
        	el: '#app1',
        	data: {
        		message: 'hello Vue.js!',
        		me: 'hi~~~~'
        	}
        })
    </script>
    
    <!-- 변수명을 사용할 경우 동일 변수명을 다음에 사용하면 error 가 발생될 수 있다.
         가급적 변수명 사용하지 말고 그냥 new Vue 로 사용 할 것 -->
    <script >
        var app = new Vue({
    	  el: '#app2',
    	  data: {
    		  message: 'hi~~~~~~~~~~ Vue.js'
    	  }
    	})
    </script>
    
    <script >
        new Vue({
    	  el: '#app3',
    	  data: {
    		  message: '안녕하세요 Vue!'
    	  }
    	})
    </script>
    --%>
    
</body>
</html>  