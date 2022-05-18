<%@ page language="java" contentType="text/html; charset=UTF-8"
<<<<<<< HEAD
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
=======
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758

<script>
function totalXXX() {
	var totalSum=0;
	$(".sum").each(function (idx, data) {
		totalSum += Number.parseInt($(data).text());
	});	
	$("#totalSum").text(totalSum);
}
$(function() {
	totalXXX();
	
	//주문하기
	$(".orderBtn").on("click",function(){
		var num= $(this).attr("data-num");
		location.href="loginCheck/orderConfirm?num="+num;		
	});
	
	//전체삭제
	$("#delAllCart").on("click", function() {
		$("form").attr("action", "loginCheck/delAllCart");
		$("form").submit();
	})
	//전체선택
	$("#allCheck").on("click", function() {
		var result= this.checked;
		$(".check").each(function(idx, data) {
			this.checked= result;
		});
	});
	//삭제버튼 이벤트처리
	$(".deleteBtn").on("click", function () {
		console.log("삭제버튼 클릭 ");
		var num= $(this).attr("data-num");
		var xxx= $(this);
		$.ajax({
			url: "loginCheck/cartDelete",
			type:"get",
			dataType: "text",
			data: {
				num: num
			},
			success: function(data, status, xhr) {
				console.log("success");
				//dom삭제 
				xxx.parents().filter("tr").remove();
<<<<<<< HEAD
				totalXXX();
=======
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
			},
			error: function(xhr, status, error) {
				console.log(error);
			}			
		});//end ajax
	});//end event
<<<<<<< HEAD
	
	
=======
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
	//수정버튼이벤트 처리 
	$(".updateBtn").on("click", function() {
		console.log("수정버튼 실행됨");
		var num=$(this).attr("data-num");
<<<<<<< HEAD
		var gamount= $("#cartAmount"+num).val();
		var gPrice =  $(this).attr("data-price");
		console.log(num, gPrice, gamount);
=======
		var gAmount= $("#cartAmount"+num).val();
		var gPrice =  $(this).attr("data-price");
		console.log(num, gPrice);
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
		$.ajax({
			url: "loginCheck/cartUpdate",
			type: "get",
			dataType: "text",
			data: {
				num: num,
<<<<<<< HEAD
				gamount: gamount //dto 변수명과 일치시켜주세요
			},
			success: function (data, status, xhr) {
				console.log("성공")
				var total= parseInt(gamount)*parseInt(gPrice);
				$("#sum"+num).text(total);
				totalXXX();
=======
				gAmount: gAmount
			},
			success: function (data, status, xhr) {
				var total= 
						parseInt(gAmount)*parseInt(gPrice);
				$("#sum"+num).text(total);				
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
			},
			error: function (xhr, status,error) {
				console.log(error);
			}//end error			
		});//end ajax
	}); //end click
});//end ready
 
</script>

<table width="90%" cellspacing="0" cellpadding="0" border="0">

	<tr>
		<td height="30">
	</tr>

	<tr>
		<td colspan="5" class="td_default">&nbsp;&nbsp;&nbsp; <font
			size="5"><b>- 장바구니-</b></font> &nbsp;
		</td>
	</tr>

	<tr>
		<td height="15">
	</tr>

	<tr>
		<td colspan="10">
			<hr size="1" color="CCCCCC">
		</td>
	</tr>

	<tr>
		<td height="7">
	</tr>

	<tr>
<<<<<<< HEAD
		<td class="td_default" align="center"><input type="checkbox"
			name="allCheck" id="allCheck"> <strong>전체선택</strong></td>
=======
		<td class="td_default" align="center">
		<input type="checkbox"
		name="allCheck" id="allCheck"> <strong>전체선택</strong></td>
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
		<td class="td_default" align="center"><strong>주문번호</strong></td>
		<td class="td_default" align="center" colspan="2"><strong>상품정보</strong></td>
		<td class="td_default" align="center"><strong>판매가</strong></td>
		<td class="td_default" align="center" colspan="2"><strong>수량</strong></td>
		<td class="td_default" align="center"><strong>합계</strong></td>
		<td></td>
	</tr>

	<tr>
		<td height="7">
	</tr>
<<<<<<< HEAD



=======
	
	
	
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
	<tr>
		<td colspan="10">
			<hr size="1" color="CCCCCC">
		</td>
	</tr>



	<form name="myForm">
<<<<<<< HEAD


		<!-- 반복시작 -->
		<c:forEach var="x" items="${cartList}">
			<tr>
				<td class="td_default" width="80">
					<!-- checkbox는 체크된 값만 서블릿으로 넘어간다. 
			따라서 value에 삭제할 num값을 설정한다. --> <input type="checkbox" name="check"
					id="check81" class="check" value="${x.num}">
				</td>
				<td class="td_default" width="80">${x.num}</td>

				<c:forTokens var="token" items="${x.gimage}" delims="."
					varStatus="status2">
					<c:if test="${status2.last}">
						<%-- ${token}, ${dto.gimage} --%>
						<c:choose>
							<c:when
								test="${token eq 'jpg' || token eq 'gif' || token eq 'png' || token eq 'bmp'}">
								<td class="td_default" width="80"><img
									src="images/${x.gimage}" border="0" align="center"
									width="80" /></td>
							</c:when>
							<c:otherwise>
								<td class="td_default" width="80"><img
									src="images/${x.gimage}.jpg" border="0" align="center"
									width="80" /></td>
							</c:otherwise>
						</c:choose>
					</c:if>
				</c:forTokens>

				<td class="td_default" width="300" style='padding-left: 30px'>
					${x.gname} <br> <font size="2" color="#665b5f">[옵션 :
						소매옵션(${x.vcategory}) , 도매옵션(${x.bcategory})] </font>
				</td>
				<td class="td_default" align="center" width="110"><span
					id="ggPrice${x.num}">${x.gprice}</span></td>
				<td class="td_default" align="center" width="90"><input
					class="input_default" type="text" name="cartAmount"
					id="cartAmount${x.num}" style="text-align: right" maxlength="3"
					size="2" value="${x.gamount}"></input></td>
				<td><input type="button" value="수정" class="updateBtn"
					data-num="${x.num}" data-price="${x.gprice}" /></td>
				<td class="td_default" align="center" width="80"
					style='padding-left: 5px'><span id="sum${x.num}" class="sum">
						${x.gprice * x.gamount} </span></td>
				<td><input type="button" value="주문" class="orderBtn"
					data-num="${x.num}"></td>
				<td class="td_default" align="center" width="30"
					style='padding-left: 10px'><input type="button" value="삭제"
					class="deleteBtn" data-num="${x.num }"></td>
				<td height="10"></td>
			</tr>

			<!-- 반복끝 -->
		</c:forEach>
	</form>
	<tr>
		<td colspan="10">총합 : <span id="totalSum"></span>
=======
	    
	    
<!-- 반복시작 -->
<c:forEach var="x" items="${cartList}">
		<tr>
			<td class="td_default" width="80">
			<!-- checkbox는 체크된 값만 서블릿으로 넘어간다. 
			따라서 value에 삭제할 num값을 설정한다. -->
			<input type="checkbox"
				name="check" id="check81" class="check" 
				value="${x.num}"></td>
			<td class="td_default" width="80">${x.num}</td>
			<td class="td_default" width="80"><img
				src="images/items/${x.gImage}.gif" border="0" align="center"
				width="80" /></td>
			<td class="td_default" width="300" style='padding-left: 30px'>
			${x.gName}
				<br> <font size="2" color="#665b5f">[옵션 : 소매옵션(${x.VCATEGORY})
					, 도매옵션(${x.BCATEGORY})]
			</font></td>
			<td class="td_default" align="center" width="110">
			<span id="ggPrice${x.num}">${x.gPrice}</span>
			</td>
			<td class="td_default" align="center" width="90"><input
				class="input_default" type="text" name="cartAmount"
				id="cartAmount${x.num}" style="text-align: right" maxlength="3"
				size="2" value="${x.gAmount}"></input></td>
			<td><input type="button" value="수정"
			     class="updateBtn"
			     data-num="${x.num}" 
			     data-price="${x.gPrice}" /></td>
			<td class="td_default" align="center" width="80"
				style='padding-left: 5px'><span id="sum${x.num}" class="sum">
				${x.gPrice * x.gAmount}
				</span></td>
			<td><input type="button" value="주문" class="orderBtn"
				data-num="${x.num}"></td>
			<td class="td_default" align="center" width="30"
				style='padding-left: 10px'>
				<input type="button" value="삭제" class="deleteBtn"
				data-num="${x.num }"></td>
			<td height="10"></td>
		</tr>

 <!-- 반복끝 --> 
</c:forEach>
	</form>
	<tr>
		<td colspan="10">
		총합 : <span id="totalSum"></span>
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
			<hr size="1" color="CCCCCC">
		</td>
	</tr>
	<tr>
		<td height="30">
	</tr>

	<tr>
		<td align="center" colspan="5"><a class="a_black"
<<<<<<< HEAD
			href="javascript:orderAllConfirm(myForm)"> 전체 주문하기 </a>&nbsp;&nbsp;&nbsp;&nbsp;
			<button onclick="orderAllConfirm(myForm)">전체 주문하기</button>
			<button id="delAllCart">전체 삭제하기</button> <a class="a_black"
			href="goodsList?gCategory=top"> 계속 쇼핑하기 </a>&nbsp;&nbsp;&nbsp;&nbsp;
=======
			href="javascript:orderAllConfirm(myForm)"> 전체 주문하기 </a>&nbsp;&nbsp;&nbsp;&nbsp; 
			<button onclick="orderAllConfirm(myForm)">전체 주문하기</button>
			<button id="delAllCart">전체 삭제하기</button>
			<a class="a_black" href="goodsList?gCategory=top"> 계속 쇼핑하기 </a>&nbsp;&nbsp;&nbsp;&nbsp;
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
		</td>
	</tr>
	<tr>
		<td height="20">
	</tr>

</table>