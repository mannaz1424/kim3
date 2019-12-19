<%@ page language="java" contentType="text/html; charset=euc-jp" pageEncoding="euc-jp"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
  <tiles:insertAttribute name="meta-tag" />
</head>
<body class="nav-md">
   	<div class="container body">
		<div class="main_container">
			<tiles:insertAttribute name="sideMenu" />
   			<tiles:insertAttribute name="content" />
   			<tiles:insertAttribute name="footer" />
   		</div>
   	</div>
   	<tiles:insertAttribute name="js" />
</body>
</html>