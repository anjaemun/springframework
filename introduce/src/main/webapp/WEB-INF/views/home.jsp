<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
<style type="text/css">
	@import url("resources/css/style.css");
</style>
</head>
<body>
	<h1>Hello world!</h1>

	<P>The time on the server is ${serverTime}.</P>
	<a href="">[페이지 이동]</a>
	<!-- jsp 파일의 이름 (form action=""도 동일) -->
	
	<hr>
	<img alt="" src="resources/images/musinsa.jpg">
</body>
</html>
