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
    <title>test_vue07.jsp</title>
</head>
<body>
    
    
    <h1>test_vue07.jsp</h1>
    
    <br><br><br>
    <div id="app7">
        <ol>
            <!-- todo-item 컴포넌트의 인스턴스 만들기 
            <todo-item></todo-item>
            -->
            
	        <!-- 
	        이제 각 todo-item 에 todo 객체를 제공합니다.
	        화면에 나오므로, 각 항목의 컨텐츠는 동적으로 바뀔 수 있습니다.
	        또한 각 구성 요소에 "키" 를 제공해야 합니다.(나중에 설명 됨)
	         -->
	        <todo-item
		      v-for="item in groceryList"
		      v-bind:todo="item"
		      v-bind:key="item.id"
		    ></todo-item>
	    </ol>
    </div>
    
    
    
    
    <!-- type="text/javascript" 가 빠지면 error 발생 -->
    <script type="text/javascript" src="/resources/js/test_vue.js"></script>
    
</body>
</html>