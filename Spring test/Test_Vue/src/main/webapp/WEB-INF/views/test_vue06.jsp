<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Vue JS 는 반드시 대상이 되는 변수(대상)  뒤에 
         javascript 나 js 파일이 import 되어야 실행된다. 
    <script type="text/javascript" src="/resources/js/test_vue.js"></script>
    -->
    
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>

    <meta charset="UTF-8">
    <title>test_vue06.jsp</title>
</head>
<body>
    
    
    <h1>test_vue06.jsp</h1>
    
    <br><br><br>
    <div id="app6">
        <p>{{ message }}</p>
        <input v-model="message" >
    </div>
    
    
    
    <!-- type="text/javascript" 가 빠지면 error 발생 -->
    <script type="text/javascript" src="/resources/js/test_vue.js"></script>
    
</body>
</html>