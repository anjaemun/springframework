<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>MOVIE INFO - Home</title>
<link rel="stylesheet" href="resources/css/style.css">
<script src="https://code.jquery.com/jquery-3.7.1.js"
	integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="wrap">																																			
		<jsp:include page="header.jsp" />
		<div class="content">
			<div class="list-title">
				<h2 class="form-header">영화 목록</h2>
				<button class="wr=btn" onClick="location.href = './writeFrm'">
					영화 등록</button>
			</div>
			<div class="data-area">
				<!-- 영화 목록 -->
				<c:if test="${empty mList}">
					<div class="movie-item">
						<span class="none-content"> 등록된 영화가 없습니다. </span>
					</div>
				</c:if>
				<c:if test="${!empty mList}">
					<c:forEach var="mitem" items="${mList}">
						<div class="movie-item">
							<a href="detail?m_code=${mitem.m_code}"> 
								<c:if test="${empty mitem.p_sysname}">
									<img src="resources/images/no_image.jpg">
								</c:if> 
								<c:if test="${!empty mitem.p_sysname}">
									<img src="resources/upload/${mitem.p_sysname}">
								</c:if>
							</a>
							<div class="info-pre">
								<div class="title-pre">
									<a href="detail?m_code=${mitem.m_code}">
										${mitem.m_name}
									</a>
								</div>
								<div class="content-pre">${mitem.m_director}</div>
								<div class="content-pre">${mitem.m_open}</div>
							</div>
						</div>
					</c:forEach>
				</c:if>
			</div>
		</div>
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>
