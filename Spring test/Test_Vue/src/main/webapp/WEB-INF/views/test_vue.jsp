<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <script src="https://cdn.jsdelivr.net/npm/vue"></script>
    <meta charset="UTF-8">

    <title>test_vue.jsp</title>
    
    <script >
        var app = new Vue({
    	  el: '#app',
    	  data: {
    	    message: '안녕하세요 Vue!'
    	  }
    	})
    </script>
    
</head>
<body>


    <h1>test_vue.jsp</h1>
    
    <br><br><br>
    <div id="app">
        {{ message }}
    </div>
    
   
    
    
</body>
</html>