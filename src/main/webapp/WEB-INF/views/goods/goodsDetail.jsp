
<%@page import="com.dto.MemberDTO"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<style>
	li {list-style: none;
		padding: 5px;}
	span {padding-right: 30px;}
</style>

<script>

	
	//bundle, variation
	$(document).ready(function() {
<<<<<<< HEAD
				
				$("#bcategory").change(function() {
					var price = $(this).children("option:selected").attr("data-xxx");
					var amount = $("#gamount").val();
					$("input[name=gprice]").val(price);
					$("#chagePrice").text(price*amount+"원");
					
				});
				
=======
		
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
				//bundle 값, option에 push		
				$.ajax({
					url: "bundleDetail",
					type: "get",
					data: {gcode: $("#findgcode").text()},
					success: function (data) {
						console.log("b성공");
						
						$(data).each(function (index, value) {
							//console.log(index);
<<<<<<< HEAD
							$('#bcategory').append("<option value='" + data[index]['bcategory']+"' data-xxx ='"+data[index]['bprice']+"'>"
=======
							$('#bcategory').append("<option value='" + data[index]['bcategory']+"'>"
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
								+ data[index]['bcategory'] + " : " + data[index]['bprice'] + "원" + "</option>");
							console.log(data[0]);
						})
					},
					error: function(xhr,status,error) {
						console.log(error);
					}
				});  //end ajax
				
				
				//variation 값, option에 push		
				$.ajax({
					url: "variationDetail",
					type: "get",
					data: {gcode: $("#findgcode").text()},
					success: function (data) {
						console.log("v성공");
						$(data).each(function (index, value) {
							//console.log(index);
							//console.log(data[index]['num']);
							$('#vcategory').append("<option value='" + data[index]['vcategory']+"'>"
								+ data[index]['vcategory'] + "</option>");
							//console.log(data[0]);
						})
					},
					error: function(xhr,status,error) {
						console.log(error);
					}
				});  //end ajax
				

<<<<<<< HEAD
				//cart 클릭이벤트
				$("#cart").on("click", function() {
					$("form").attr("action", "loginCheck/cartAdd");
				});//end clickevent
		});//end ready
		
=======
				//장바구니에 담기
				$("#cart").on("click",function(){
					console.log("cartadd 버튼클릭");
	
				$.ajax({
					url: "loginCheck/cartAdd",
					type: "POST",
					data: form,
					success: function (result){
					/* 	if(result == "0"){
							alert("옵션을 1개이상 선택해주세요.")
						} else if(result <= "1"){
							alert("상품을 장바구니에 담았습니다.")
						} */
					}
				
				});
				
				});//end event
				
		});//end ready
		
			
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
</script>




${goodsDetail}
<FORM name="goodDetailForm" method="GET" action="#"><!--action을 막음 --><!-- hidden data -->
	    <input type="hidden" name="gimage" value="${goodsDetail.gimage}"> 
<<<<<<< HEAD
	    <input type="hidden" name="gcode" value="${goodsDetail.gcode}">
	     <input	type="hidden" name="gname" value="${goodsDetail.gname}"> 
	     <input	type="hidden" name="gprice" value="${goodsDetail.gprice}">
=======
	    <input type="hidden" name="gCode" value="${goodsDetail.gcode}">
	     <input	type="hidden" name="gname" value="${goodsDetail.gname}"> 
	     <input	type="hidden" name="gprice" value="${goodsDetail.gprice}">
	     <input type="hidden" name="gamount" value="${goodsDetail.gamount}">
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758


<% 
	MemberDTO login = (MemberDTO)session.getAttribute("login");
	if(login != null){
		System.out.println("로그인중");
	}
%>

${goodsDetail.gname}
	<div>
		<div style='width:80%'>
				<div style='border-bottom:solid 1px #cecece'>
					<h2>${goodsDetail.gname}</h2>
				</div>
					
					<div style='padding: 20px; float: left; width:30%;'>
						<c:forTokens var="token" items="${goodsDetail.gimage}" delims="." varStatus="status">
							<c:if test="${status.last}">
								<c:choose>
									<c:when test="${token eq 'jpg' || token eq 'gif' || token eq 'png' || token eq 'bmp'}">
										<li><img src="images/${goodsDetail.gimage}"
											border="0" align="center" width="300"/></li>
									</c:when>
									<c:otherwise>
										<li><img src="images/${goodsDetail.gimage}.jpg"
										border="0" align="center" width="300"/></li>
									</c:otherwise>
								</c:choose>
							</c:if>
						</c:forTokens>
					</div>
						<div style='width:50%; float:left;'>
						<ul>

							<li class="td_title"><span>상품코드</span><span id=findgcode>${goodsDetail.gcode }</span></li>

						<%-- 	<li class="td_default" style='padding-left: 30px'>
								${goodsDetail.gcode }
							</li> --%>

							<li class="td_title"><span>상품명</span><span>${goodsDetail.gname}</span></li>
<<<<<<< HEAD
							<li class="td_title"><span>단품 가격</span><span style="color: red; font-weight: bolder;" >${goodsDetail.gprice}</span></li>
=======
							<li class="td_title"><span>가격</span><span style="color: red; font-weight: bolder;">${goodsDetail.gprice}</span></li>
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758

							<li class="td_red" style='padding-left: 30px'>
								
							</li>
							<li class="td_title"><span>배송비</span><span style="padding-right:0px; color: #2e56a9; font-weight: bolder">무료배송</span><span style="font-size: 0.8em;"> (도서
									산간지역 별도 배송비 추가)</span></li>
							<li class="td_title" rowspan="2">상품옵션</li>
							
							<!-- 회원일 때 10(관리자)/20(일반)/30(사업자) -->
							<c:if test="${not empty login}">
							<c:choose>
<<<<<<< HEAD
								
								<c:when test="${login.usercode eq '20'}">
									<!-- vcategory -->
									<li style='padding-left: 30px'>
									<select	class="select_change" name="vcategory" id="vcategory" style="width: 300px">
											<option selected>variation</option>
											
									</select></li>
								</c:when>
								<c:otherwise>
=======
								<c:when test="${login.usercode eq '10'}">
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
									<!-- vcategory -->
									<li style='padding-left: 30px'>
									<select	class="select_change" name="vcategory" id="vcategory" style="width: 300px">
											<option selected>variation</option>
											
									</select></li>
							
									<!-- bcategory -->
									<li style='padding-left: 30px'>
									<select	class="select_change" name="bcategory" id="bcategory" style="width: 300px">
<<<<<<< HEAD
										<option selected data-xxx="${goodsDetail.gprice}">단품: ${goodsDetail.gprice}</option>
=======
										<option selected>bundle</option>
										
									</select></li>
								</c:when>
								<c:when test="${login.usercode eq '20'}">
									<!-- vcategory -->
									<li style='padding-left: 30px'>
									<select	class="select_change" name="vcategory" id="vcategory" style="width: 300px">
											<option selected>variation</option>
											
									</select></li>
								</c:when>
								<c:otherwise>
									<!-- bcategory -->
									<li style='padding-left: 30px'>
									<select	class="select_change" name="bcategory" id="bcategory" style="width: 300px">
										<option selected>bundle</option>
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
										
									</select></li>
								</c:otherwise>
							</c:choose>
							</c:if>
							
							<!-- 비로그인 회원처리  -->
							<c:if test="${empty login}">
								<!-- vcategory -->
								<li style='padding-left: 30px'>
								<select	class="select_change" name="vcategory" id="vcategory" style="width: 300px">
										<option selected>variation</option>
											
								</select></li>
							</c:if>
							<li class="td_title">주문수량</li>
							<span><input type="text"
<<<<<<< HEAD
								name="gamount" value="1" id="gamount"
								style="text-align: right; height: 18px;"> <img
								src="images/up.png" id="up" > <img src="images/down.png"
								id="down" ></span>
							
							<li class="td_title"><span>최종 가격</span><span style="color: red; font-weight: bolder;" id="chagePrice">${goodsDetail.gprice}원</span></li>
						</ul>
					</div>

=======
								name="gAmount" value="1" id="gAmount"
								style="text-align: right; height: 18px;"> <img
								src="images/up.png" id="up" > <img src="images/down.png"
								id="down" ></span>
						</ul>
					</div>
				
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
		</div>
	</div>
	<div style='width:100%; float:left;'>
		<br> <button >구매</button>
		&nbsp;&nbsp;
		<button id="cart">장바구니</button>
	</div>

<<<<<<< HEAD
=======


>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
</FORM>
