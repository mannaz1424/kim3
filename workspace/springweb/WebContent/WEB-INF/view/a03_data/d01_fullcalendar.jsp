<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,java.net.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href='${path}/a00_com/packages/core/main.css' rel='stylesheet' />
<link href='${path}/a00_com/packages/daygrid/main.css' rel='stylesheet' />
<link href='${path}/a00_com/packages/timegrid/main.css' rel='stylesheet' />
<link href="${path}/a00_com/jquery-ui.css" rel="stylesheet" >


<style type="text/css">
  body {
    margin: 40px 10px;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 900px;
    margin: 0 auto;
  }
  input[type=text],select,label,textarea{
  	margin-bottom:12px;pardding:.4em;width:95%;
  }
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src='${path}/a00_com/packages/core/main.js'></script>
<script src='${path}/a00_com/packages/interaction/main.js'></script>
<script src='${path}/a00_com/packages/daygrid/main.js'></script>
<script src='${path}/a00_com/packages/timegrid/main.js'></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var calendarEl = document.getElementById('calendar');
	    var calendar = new FullCalendar.Calendar(calendarEl, {
	    	plugins: [ 'interaction', 'dayGrid', 'timeGrid' ],
	      	header: {
	        	left: 'prev,next today',
	        	center: 'title',
	        	right: 'dayGridMonth,timeGridWeek,timeGridDay'
	      	},
	      	defaultDate: new Date().toISOString(),
	      	navLinks: true, // can click day/week names to navigate views
	      	selectable: true,
	      	selectMirror: true,
	      	select: function(arg) {
	    	  	$("#dialog #start").val(arg.start.toISOString());
	    	  	// 같은 날짜명 null이 들어 오므로.. 시작날짜로 설정처리..
	    	  	$("#dialog #end").val(arg.end!=null?arg.end.toISOString(): arg.start.toISOString());
	    	 	$("#dialog").dialog("open");
	        	//calendar.render();
	        	calendar.unselect();
	      	},
	      	eventClick:function(info,element){
	    	  	updateProc(info);
	      	},
	      	droppable:true,
	      	eventDrop:function(info){
	    	  	updateProc(info);
	      	},
	      	eventDragStop:function(info){
	    	  	updateProc(info);
	      	},
	      	eventResize:function(info){
	    	  	updateProc(info);
	      	},
	      	editable: true,
	      	eventLimit: true, // allow "more" link when too many events
	      	events:function(info, successCallback, failureCallback){
	 			$.ajax({
	 				type:"post",
	 				url:"calendar.do?method=data6",
	 				dataType:"json",
	 				success:function(data){
	 					//alert(data.list.title);
	 					var list = data.list;
	 					var events = [];
	 					for(var idx in list){
	 						var event = list[idx];
	 						events.push(event);
	 					}
	 					successCallback(events)
	 				}
	 			});	    	  
	    	  
	      	}
	    });
	    calendar.render();
//	    $("h1").attr("align","center").click(function(){
//	    	alert("서버 데이터 호출!!");
/* 
# ajax로 서버의 자원 호출..
1. ajax는 화면 refresh 없이 이벤트로 서버에 있는 자원을 호출하는 것으로,
	form의 submit, location href를 통하여 화면 전체를 변경 시키는 것과
	구별된다.
2. 서버에 특정한 자원을 호출 하는 방법
	1) url(서버의 특정한 주소를 호출하는 방법)
	2) 요청값 전달(parameter 데이터)
3. 기본적인 ajax 호출 형식..
	1) $.ajax({속성:속성값,속성2:속성2값,,,,});
	2) 속성
		- type : get/post - 요청값을 전달하는 방식의 차이..
		- url : 서버의 자원이 있는 위치   ?요청key:요청value&....
		- data : 요청값에 대한 처리..	
			1) 요청key=요청value&요청key=요청value&..
			2) {요청key:요청value, 요청key:요청value,......}
			3) $("form").serialize() : form 하위에 있는 요소객체들을 
				name와 value을 기준으로 위에 나열될 query string으로 
				자동변환되어 전송한다.
		- dataType : 어떤 형식의 데이터를 서버에서 가져올것인가?
					text, html, json
		- success: function(revData){}
				서버에서 넘겨준 데이터를 revData로 받을 수 있다.
 */	    	
		$("#dialog").dialog({
			autoOpen:false,
			buttons:{
				"등록":function(){
			        var title = $("#dialog #title").val();
			        var start = $("#dialog #start").val();
			        var end = $("#dialog #end").val();
			        var content = $("#dialog #content").val();
			        var color = $("#dialog #color").val();
			        var textColor = $("#dialog #textColor").val();
			        // 문자열을 boolean 으로 변경..
			        
			        
			        
			        //var allDay = Boolean( $("#dialog #allDay").val() );
			        var allDay = $("#dialog #allDay").val()=="true";
			        //alert(allDay);
			        if (title) {
			          calendar.addEvent({
			            title: title,
			            start: start,
			            end: end,
			            content:content,
			            color:color,
			            textColor:textColor,
			            allDay:allDay
			          })
			        }	
			        // 등록 후, DB적용 전 화면 적용..
			        //calendar.render();
			        // 등록 처리..
			        //alert($("form").serialize());
			        
			        $.ajax({
			        	type:"post",
			        	url:"calendar.do?method=insert",
			        	data:$("#frm1").serialize(),
			        	success:function(data){
			        		//if(data=="")
			        		alert("등록완료");
			        	}
			        });
			        
			        $("#dialog #title").val("");
			        $("#dialog #content").val("");
			        // 등록후  색상과  allDay 초기 화..
			        $("#dialog #color").val("#0099cc");
			        $("#dialog #textColor").val("#ccffff");			        
			        $("#dialog #allDay").val("true");			        
			        $("#dialog").dialog("close");
			        
				}
			},
			modal:true
			
		});
		$("#dialog2").dialog({
			autoOpen:false,
			buttons:{
				"수정":function(){
			        var id = $("#dialog2 #id").val();
			        var title = $("#dialog2 #title").val();
			        var start = $("#dialog2 #start").val();
			        var end = $("#dialog2 #end").val();
			        var content = $("#dialog2 #content").val();
			        var color = $("#dialog2 #color").val();
			        var textColor = $("#dialog2 #textColor").val();
			        var allDay = $("#dialog2 #allDay").val()=="true";
			      
			        // 화면에 변경 처리..
			        // 1. calendar.getEventById( id ) : 해당 event 객체 가져오기..
			        var event = calendar.getEventById( id);
			        // 변경할 속성값 저장..
			        // 이벤트객체.setProp("속성",속성값)
			        // 이벤트객체.setExtendedProp("속성",속성값) 
			        //    확장속성(사용자 정의)
			        event.setProp("title",title);
			        event.setProp("backgroundColor",color);
			        event.setProp("textColor",textColor);
			        event.setExtendedProp("content",content);
			        
			        //event.setProp("allDay",allDay);
			        event.setAllDay(allDay);
		        	// 문자열을 boolean 으로 변경..
					
			        // 등록 후, DB적용 전 화면 적용..
			        //calendar.render();
			        // 수정
			        //alert( $("#frm2").serialize() );
			        updateCall();

			        
			        $("#dialog2").dialog("close");
			        
				},
				"삭제":function(){
			        var id = $("#dialog2 #id").val();
			        var event =calendar.getEventById( id );
			        event.remove();		
			        //calendar.render();
			        $.ajax({
			        	type:"post",
			        	url:"calendar.do?method=delete",
			        	data:{id:id},
			        	success:function(data){
			        		alert("삭제완료");
			        	}
			        });  
			        $("#dialog2").dialog("close");
				}			
			},
			modal:true
		});		
	});
function updateProc(info){
	  // 내장된 속성
	  var event = info.event;
	  // 확장 속성..
	  var exEvent = info.event.extendedProps;
	  $("#dialog2 #id").val(event.id);
	  $("#dialog2 #title").val(event.title);
	  $("#dialog2 #start").val(event.start.toISOString());
	  // 같은 날짜시간은 null이 들어 오므로.. 시작날짜로 설정처리..
	  $("#dialog2 #end").val(event.end!=null?event.end.toISOString(): event.start.toISOString());
	  $("#dialog2 #content").val(exEvent.content);
	  $("#dialog2 #color").val(event.backgroundColor);
	  $("#dialog2 #textColor").val(event.textColor);
	  $("#dialog2 #allDay").val(""+event.allDay);
	  
	  $("#dialog2").dialog("open");	
}	
function updateCall(){
    $.ajax({
    	type:"post",
    	url:"calendar.do?method=update",
    	data:$("#frm2").serialize(),
    	success:function(data){
    		//if(data=="")
    		alert("수정완료");
    	}
    });	
}
</script>
</head>
<body>
	<!-- <h1>ajax 연동 연습!!</h1> -->
	<!-- 
	<input name="name"/>
	<input name="age"/>
	<input name="loc"/>-->
  	<div id='calendar'>
  	</div>

	  	<div id="dialog" title="일정등록">
	  	  	<form id="frm1">
		  		<label>일정이름</label>
		  		<input id="title" name="title" type="text"/>
		  		<label>내용</label>
		  		<textarea rows="5" cols="20"  id="content"  name="content" ></textarea>
		  		<label>종일여부</label>
		  		<select id="allDay" name="allDay">
		  			<option value="true"> 종 일 </option>
		  			<option value="false"> 시간 </option>
		  		</select>
		  		<label>시작날짜</label>
		  		<input id="start" name="start" type="text" readonly />
		  		<label>마지막날짜</label>
		  		<input id="end" name="end" type="text" readonly/>
		  		<label>배경색상</label>
		  		<input id="color"  name="color"  type="color" value="#0099cc"/>
		  		<label>글자색상</label>
		  		<input id="textColor"  name="textColor"  type="color" value="#ccffff"/>
	  		</form>
	  	</div>
	  	<div id="dialog2" title="일정상세">
	  	  	<form id="frm2">
	  	  		<input id="id" name="id" type="hidden" />
		  		<label>일정이름</label>
		  		<input id="title" name="title" type="text"/>
		  		<label>내용</label>
		  		<textarea rows="5" cols="20" id="content" name="content" ></textarea>
		  		<label>종일여부</label>
		  		<select id="allDay" name="allDay">
		  			<option value="true"> 종 일 </option>
		  			<option value="false"> 시간 </option>
		  		</select>
		  		<label>시작날짜</label>
		  		<input id="start" name="start" type="text" readonly/>
		  		<label>마지막날짜</label>
		  		<input id="end" name="end" type="text" readonly/>
		  		<label>배경색상</label>
		  		<input id="color"  name="color"  type="color" value="#0099cc"/>
		  		<label>글자색상</label>
		  		<input id="textColor"  name="textColor"  type="color" value="#ccffff"/>
	  		</form>
	  	</div>
</body>
</html>