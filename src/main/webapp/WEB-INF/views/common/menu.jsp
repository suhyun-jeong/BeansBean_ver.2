<%@ page language="java" contentType="text/html; charset=UTF-8"
<<<<<<< HEAD
    pageEncoding="UTF-8"%>
<<<<<<< HEAD
=======
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
<a href="goodsList?gcategory=coffee">커피/원두</a>&nbsp;
<a href="goodsList?gcategory=liquid">티/액상차</a>&nbsp;
<a href="goodsList?gcategory=beverage">에이드/스무디</a>&nbsp;
<br>

<br>
<a href="Cook_BRD">레시피 게시판</a>&nbsp;
<<<<<<< HEAD
<a href="Info_BRD">사업자 게시판</a>&nbsp;
=======
<c:if test="${login.usercode == '30' || login.usercode == '10' }">
<a href="Info_BRD">사업자 게시판</a>&nbsp;
</c:if>
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758

<br>
=======
	pageEncoding="UTF-8"%>
<nav class="lnb_box">
	<div class="lnb">
		<ul class="lnb_menu">
			<li><a href="goodsList?gcategory=coffee">커피/원두</a></li>
			<li><a href="goodsList?gcategory=liquid">티/액상차</a></li>
			<li><a href="goodsList?gcategory=beverage">에이드/스무디</a></li>
			<li><a href="Cook_BRD">레시피 게시판</a></li>
			<li><a href="Info_BRD">사업자 게시판</a></li>
		</ul>
	</div>
</nav>
>>>>>>> ad068914fc6c876ec913a8e5a3bebd865683e2aa
