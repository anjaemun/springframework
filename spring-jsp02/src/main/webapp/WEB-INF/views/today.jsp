<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="date" value="<%=new Date()%>" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 일시</title>
</head>
<body>
	[오늘의 날짜]
	<fmt:formatDate value="${date}" />
	<br> [현재 시간]
	<fmt:formatDate value="${date}" type="time" />
	<hr>
	<h2>날짜와 시간의 출력 형식 지정</h2>
	[f]
	<fmt:formatDate value="${date}" type="both" dateStyle="full"
		timeStyle="full" />
	<br> [l]
	<fmt:formatDate value="${date}" type="both" dateStyle="long"
		timeStyle="long" />
	<br>
	<!-- medium이 default 값임. -->
	[m]
	<fmt:formatDate value="${date}" type="both" dateStyle="medium"
		timeStyle="medium" />
	<br> [s]
	<fmt:formatDate value="${date}" type="both" dateStyle="short"
		timeStyle="short" />

	<hr>
	<h2>임의의 출력 형식 지정</h2>
	<fmt:formatDate value="${date}" pattern="yyyy-MM-dd (E)" />
	<fmt:formatDate value="${date}" type="time" pattern="(a)hh:mm:ss" />
	<hr>
	<h1>숫자의 출력 형식</h1>
	<p>
		<!-- groupingUser는 default값이 true이다. -->
		예 1 :
		<fmt:formatNumber value="123456789" groupingUsed="false" />
	</p>
	<p>
		<!-- default가 소수점 아래 세자리까지 -->
		예 2 :
		<fmt:formatNumber value="3.141592" pattern="#.######" />
	</p>
	<p>
		예 3 :
		<fmt:formatNumber value="10.5" pattern="#.00000" />
	</p>
	<p>
		예 4 :
		<fmt:formatNumber value="1000000" type="currency" currencySymbol="$" />
	</p>
	<p>
		예 5 :
		<fmt:formatNumber value="0.98" type="percent" />
	</p>
</body>
</html>