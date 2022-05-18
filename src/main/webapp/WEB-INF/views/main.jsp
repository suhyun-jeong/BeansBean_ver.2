<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/init.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<meta charset="UTF-8">
<title>MAIN</title>
<c:if test="${not empty success }">
	<script type="text/javascript">
		alert("${success}")
	</script>
	<%
		session.removeAttribute("success");
	%>
</c:if>
</head>
<body>
	<header id="header">
		<!-- gnb/ 로그인정보관련 -->
		<jsp:include page="common/top.jsp" flush="true" />
		
		<!-- 로고 -->
		<div class="logo">메인 화면입니다</div>
		
		<!-- lnb/ 메뉴바 -->
		<jsp:include page="common/menu.jsp" flush="true"/>

	</header>
	
	<!-- ------------------------------------------------- -->
	<div id="content">
		<div class="main_visual">
			<img src="images/banner/main_banner.jpg">
		</div>
		
		<jsp:include page="goods/goodsList.jsp" flush="true"/>
	</div>
</body>
</html>