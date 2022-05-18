<%@ page language="java" contentType="text/html; charset=UTF-8"
<<<<<<< HEAD
	pageEncoding="UTF-8"%>
<!-- 상단 메뉴 바 -->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- 로그인되어있을 때 -->
<c:if test="${not empty login}">
	<nav class="gnb">
		<div class="gnb_box">
			<ul class="gnb_menu">
				<span id="span_user2">${login.username}님</span>
				<span id="span_user">(${login.userid})</span>
				<span><a href="logout">로그아웃</a></span>
				<span><a href="mypage">마이페이지</a></span>
				<span><a href="loginCheck/cartList">장바구니</a></span>

<<<<<<< HEAD
=======
    pageEncoding="UTF-8"%>
<!-- 상단 메뉴 바 -->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- 로그인되어있을 때 -->
<c:if test="${not empty login}">
	<p style="cursor:default;">&nbsp;<b>${login.username}</b><span style="font-size:12px;">(${login.userid})</span> 님</p>
	
	<a href="logout">로그아웃</a>
	<a href="mypage">마이페이지</a>
	<a href="loginCheck/cartList">장바구니</a>
	
	<c:if test="${login.usercode == 10}">	<!-- 관리자 페이지 -->
			<a href="CtrlGoods">상품 관리</a>
			<a href="goodsinsert">상품 등록</a>

		<p><b>${login.username}</b> 님</p>
		
	<a href="logout">로그아웃</a>
		<a href="mypage">마이페이지</a>
		<a href="">장바구니</a>
	
		<c:if test="${login.usercode == 10}">	<!-- 관리자 페이지 -->
			<a href="">판매 관리</a>
		</c:if>

	</c:if>
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
=======
				<c:if test="${login.usercode == 10}">
					<!-- 관리자 페이지 -->
					<span><a href="CtrlGoods">상품 관리</a></span>
					<span><a href="goodsinsert">상품 등록</a></span>
				</c:if>
			</ul>
		</div>
	</nav>
>>>>>>> ad068914fc6c876ec913a8e5a3bebd865683e2aa
</c:if>


<!-- 로그인되어있지 않을 때 -->
<c:if test="${empty login}">
	<nav class="gnb">
		<div class="gnb_box">
			<ul class="gnb_menu">
				<span><a href="loginForm">로그인</a></span>
				<span><a href="memberForm">회원가입</a></span>
			</ul>
		</div>
	</nav>
</c:if>