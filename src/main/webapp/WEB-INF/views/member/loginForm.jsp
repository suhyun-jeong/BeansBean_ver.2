<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 로그인 폼 -->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<style type="text/css">
<<<<<<< HEAD
<<<<<<< HEAD
	.label {
=======
	span {
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
		display:inline-block;
		width:70px;
		cursor:default;
	}
<<<<<<< HEAD
	
	.findIdPw {
		display:inline-block;
		width:49%;
		text-align:center;
		font-size:12px;
=======
	span {
		display:inline-block;
>>>>>>> 4e146d2cb965b1e402567fa3a1125794b56cba94
	}
=======
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">

<<<<<<< HEAD
	$(function() {
		var input_id = $("#userid");
		var input_pw = $("#passwd");
		
		// 빈칸 검사 및 ID/PW 체크
=======
	$(document).ready(function() {
		var input_id = $("#userid");
		var input_pw = $("#passwd");
		// 빈칸 검사
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
		$("form").submit(function(event) {
			if (input_id.val().length < 1) {
				event.preventDefault();
				alert("아이디를 입력해주세요.");
				input_id.focus();
			} else if (input_pw.val().length < 1) {
				event.preventDefault();
				alert("비밀번호를 입력해주세요.");
				input_id.focus();
<<<<<<< HEAD
			} else {	// ID/PW 체크
=======
			} else {
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
				if (!idpwCheck) {
					event.preventDefault();
					alert("아이디 혹은 비밀번호를 확인해주세요.");					
				}
			}
		});

</script>

<!-- 아이디 혹은 비밀번호가 일치하지 않을 때 -->
<c:if test="${not empty loginMsg}">
	<script type="text/javascript">alert("${loginMsg}");</script>
	<% session.removeAttribute("loginMsg"); %>
</c:if>

<!-- 로그인 폼 -->
<form action="login" method="post">
<<<<<<< HEAD
	<table>
		<tr>
			<td>
<<<<<<< HEAD
				<span class="label">아이디: </span> 
				<input type="text" name="userid" id="userid" class="loginInput"><br>
				<span class="label">비밀번호: </span>
=======
				<span style="display:inline-block;width:70px;cursor:default;">아이디: </span> 
				<input type="text" name="userid" id="userid" class="loginInput"><br>
				<span style="display:inline-block;width:70px;cursor:default;">비밀번호: </span>
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
				<input type="text" name="passwd" id="passwd" class="loginInput">
			</td>
			<td>
				<input type="submit" value="로그인" style="width:60px;height:50px;">
			</td>
		</tr>
<<<<<<< HEAD
		
		<tr>
			<td colspan="2">
				<span class="findIdPw">
					<a href="">아이디 찾기</a>
				</span>
				<span class="findIdPw">
					<a href="">비밀번호 찾기</a>
				</span>
			</td>
		</tr>
=======
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
	</table>
=======
		<div>
			<ul>
				<li>
					<span>아이디: </span> 
					<input type="text" name="userid" id="userid" class="loginInput"><br>
					<span>비밀번호: </span>
					<input type="text" name="passwd" id="passwd" class="loginInput">
				</li>
				<li>
					<input type="submit" value="로그인" style="width:60px;height:50px;">
				</li>
			</ul>
		</div>
		
		<div>
			<ul>
				<li>
					<span>
						<a href="">아이디 찾기</a>
					</span>
					<span>
						<a href="">비밀번호 찾기</a>
					</span>
				</li>
			</ul>
		</div>
>>>>>>> 4e146d2cb965b1e402567fa3a1125794b56cba94
</form>
