<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 상품 주문 완료 화면 뷰 -->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ page import="com.dto.OrderinfoDTO" %>

<!-- 회원/비회원 및 도/소매 여부 체크 -->
<%
	int usercode = 0;	// 0: 비회원, 20: 일반 회원, 30: 사업자-소매, 35: 사업자-도매

	// 로그인 여부
	if (session.getAttribute("login") != null)
		usercode = 20;

	// 사업자 회원의 도/소매 여부
	boolean bundle = false;	// false: 소매, true: 도매
	OrderinfoDTO oiDTO = (OrderinfoDTO) session.getAttribute("oiDTO");
	if (oiDTO.getBcategory() != null && !oiDTO.getBcategory().equals("소매품")) {
		if (!oiDTO.getBcategory().contains("단품")) {	// 도매
			bundle = true;
			usercode = 35;
		} else	// 소매
			usercode = 30;
	}
%>
<c:set var="usercode" value="<%= usercode %>" />
<c:set var="bundle" value="<%= bundle %>" />

<div>
	<ul><li>주문 완료</li></ul>
	
	<ul>
		<li>
			<c:if test="${usercode != 0}">	<!-- 비회원 주문의 경우, 아이디를 출력하지 않음 -->
				<b>${oiDTO.userid}</b> 님의 
			</c:if>
			주문이 안전하게 처리되었습니다.
		</li>
	</ul>
</div>
<br>
	
	
<div><ul><li>상품 및 배송 정보</li></ul></div>
	
<div>
	<ul>
		<li>상품 정보</li>
		<li>판매가</li>
		<li>수량</li>
		<li>합계</li>
	</ul>
	
	<ul>
		<li>
			${oiDTO.gname} 
			<c:if test="${not empty oiDTO.vcategory}">	<!-- 상품 옵션 정보가 없을 경우, 옵션 정보를 출력하지 않음 -->
				(${oiDTO.vcategory})
			</c:if>
			<c:if test="${usercode == 35}">	<!-- 도매품일 경우, 묶음 정보 표시 -->
				<br>
				${bDTO.bcategory}
			</c:if>
		</li>
		<li>
			${oiDTO.gprice}
		</li>
		<li>
			${oiDTO.gamount}
		</li>
		<li>
			<c:choose>
				<c:when test="${usercode == 35}">	<!-- 도매품일 경우의 가격 총합 -->
					${bDTO.bprice * oiDTO.gamount}원						
				</c:when>
				<c:otherwise>	<!-- 그 외 가격 총합 -->
					${oiDTO.gprice * oiDTO.gamount}원
				</c:otherwise>
			</c:choose>
		</li>
	</ul>
</div>
<br>
		
<<<<<<< HEAD
<<<<<<< HEAD
		<c:if test="${oiDTO.userid ne '비회원'}">	<!-- 비회원 주문의 경우, 아이디를 출력하지 않음 -->
=======
		<c:if test="${not empty oiDTO.userid}">
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
			<b>${oiDTO.userid}</b> 님의 
		</c:if>
		주문이 안전하게 처리되었습니다.
	</div>
=======

<!-- 배송지 및 연락처 -->
<div>
	<ul>
		<li>수취인</li>
		<li>
			${oiDTO.ordername}
		</li>

		<li>배송지</li>
		<li>
			${oiDTO.addr1}<br>${oiDTO.addr2} (${oiDTO.post})
		</li>

		<li>연락처</li>
		<li>
			${oiDTO.phone1}-${oiDTO.phone2}-${oiDTO.phone3}
		</li>
	</ul>
</div>
<br>
>>>>>>> 4e146d2cb965b1e402567fa3a1125794b56cba94
	
	
<div><ul><li>결제 정보</li></ul></div>
	
<<<<<<< HEAD
		<table id="goodsInfo">
			<!-- 구분선 -->
			<tr><td colspan="4"><hr></td></tr>
			
			<tr>
				<th>상품 정보</th>
				<th>판매가</th>
				<th>수량</th>
				<th>합계</th>
			</tr>
			
			<!-- 구분선 -->
			<tr><td colspan="4"><hr></td></tr>
			
			<tr id="goodsValues">
				<td style="text-align:left;">
					${oiDTO.gname} 
<<<<<<< HEAD
					<c:if test="${not empty oiDTO.vcategory}">	<!-- 상품 옵션 정보가 없을 경우 -->
						(${oiDTO.vcategory})
					</c:if>
					<c:if test="${oiDTO.bcategory ne '소매품'}">	<!-- 도매품일 경우, 묶음 정보 표시 -->
						<br>
						${bDTO.bcategory}
=======
					<c:if test="${not empty oiDTO.vcategory}">
						(${oiDTO.vcategory})
					</c:if>
					<c:if test="${not empty oiDTO.bcategory}">
						<br>
						${oiDTO.bcategory}
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
					</c:if>
				</td>
				<td>${oiDTO.gprice}</td>
				<td>${oiDTO.gamount}</td>
<<<<<<< HEAD
				<td id="totalPrice1">
					<c:if test="${oiDTO.bcategory ne '소매품'}">	<!-- 도매품일 경우의 가격 총합 -->
						${bDTO.bprice * oiDTO.gamount}원
					</c:if>
					<c:if test="${oiDTO.bcategory eq '소매품'}">	<!-- 소매품일 경우의 가격 총합 -->
						${oiDTO.gprice * oiDTO.gamount}원
					</c:if>
				</td>
=======
				<td>${oiDTO.gprice * oiDTO.gamount}원</td>
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
			</tr>
			
			<tr><td colspan="4"><hr></td></tr>
		</table>
		
		<br>
		
		<table id="placeInfo">
			<tr><td colspan="2"><hr></td></tr>
			
			<tr>
				<th>수취인</th>
				<td>${oiDTO.ordername}</td>
			</tr>
			
			<tr><td colspan="2"><hr></td></tr>
			
			<tr>
				<th>배송지</th>
				<td>
					${oiDTO.addr1}<br>${oiDTO.addr2} (${oiDTO.post})
				</td>
			</tr>
			
			<tr><td colspan="2"><hr></td></tr>
			
			<tr>
				<th>연락처</th>
				<td>
					${oiDTO.phone1}-${oiDTO.phone2}-${oiDTO.phone3}
				</td>
			</tr>
			
			<tr><td colspan="2"><hr></td></tr>
		</table>
	</div>
	
	<br>
	
	<div>
		<h3>결제 정보</h3>
		
		<table id="payInfo">
			<!-- 구분선 -->
			<tr><td colspan="2"><hr></td></tr>
			
			<tr>
				<th>결제 금액</th>
<<<<<<< HEAD
				<td style="padding-right:30px;">
					<c:if test="${oiDTO.bcategory ne '소매품'}">	<!-- 도매품일 경우의 가격 총합 -->
						${bDTO.bprice * oiDTO.gamount}원
					</c:if>
					<c:if test="${oiDTO.bcategory eq '소매품'}">	<!-- 소매품일 경우의 가격 총합 -->
						${oiDTO.gprice * oiDTO.gamount}원
					</c:if>
				</td>
=======
				<td style="padding-right:30px;">${oiDTO.gprice * oiDTO.gamount}원</td>
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
			</tr>
			
			<tr><td colspan="2"><hr></td></tr>
			
			<tr>
				<th>결제 수단</th>
				<td style="padding-right:30px;">${oiDTO.paymethod}</td>
			</tr>
			
			<!-- 구분선 -->
			<tr><td colspan="2"><hr></td></tr>
		</table>
	</div>
	
	<p style="margin:30px auto;text-align:center;"><a href="goodsList?gcategory=coffee">메인으로 돌아가기</a></p>
</div>
=======
<div>
	<ul>
		<li>결제 금액</li>
		<li>
			<c:choose>
				<c:when test="${usercode == 35}">	<!-- 도매품일 경우의 가격 총합 -->
					${bDTO.bprice * oiDTO.gamount}원
				</c:when>
				<c:otherwise>	<!-- 그 외 가격 총합 -->
					${oiDTO.gprice * oiDTO.gamount}원
				</c:otherwise>
			</c:choose>
		</li>

		<li>결제 수단</li>
		<li>
			${oiDTO.paymethod}
		</li>
	</ul>
</div>
	
<p style="margin:30px auto;"><a href="goodsList?gcategory=coffee">메인으로 돌아가기</a></p>
>>>>>>> 4e146d2cb965b1e402567fa3a1125794b56cba94
