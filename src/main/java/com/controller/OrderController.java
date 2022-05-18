package com.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

<<<<<<< HEAD
import com.dto.BundleDTO;
import com.dto.CartDTO;
import com.dto.OrderinfoDTO;
import com.service.GoodsService;
=======
import com.dto.CartDTO;
import com.dto.OrderinfoDTO;
import com.service.GoodsService;
//import com.dto.CartService;
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
import com.service.OrderService;

@Controller
@Transactional
public class OrderController {
	/* 상품 주문에 대한 컨트롤러 */

	@Autowired
	OrderService orderService;
<<<<<<< HEAD

=======
	
	/*
	@Autowired
	CartService cartService;
	*/
	
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
	@Autowired
	GoodsService goodsService;
	
	// 상품 주문 화면
	@RequestMapping(value="/orderForm")
	public ModelAndView orderForm(CartDTO cDTO) {
<<<<<<< HEAD
		// System.out.println(cDTO);
		
		ModelAndView mav = new ModelAndView();
		
		// 도매 상품일 경우, 번들 정보를 가져옴
		if (cDTO.getBcategory() != null) {
			BundleDTO bDTO = orderService.getBPrice(cDTO.getGcode());
			mav.addObject("bDTO", bDTO);
		}
		
=======
		System.out.println(cDTO);
		
		ModelAndView mav = new ModelAndView();
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
		mav.addObject("cDTO", cDTO);
		mav.setViewName("order");
		
		return mav;
	}
	
	// 상품 한 개 주문하기
	@RequestMapping(value="/oneGoodsOrder")
	public String oneGoodsOrder(HttpSession session, OrderinfoDTO oiDTO) {
		System.out.println(oiDTO);
		
		int goodsAmount = goodsService.goodsDetail(oiDTO.getGcode()).getGamount();
		if (goodsAmount - oiDTO.getGamount() < 0) {	// 재고보다 많은 수량의 상품 구매 시
			session.setAttribute("success", "상품 구매 실패 - 재고 부족");
			
			return "redirect:./";
		} else {
<<<<<<< HEAD

			// 도매 상품일 경우, 번들 정보를 가져옴
			if (oiDTO.getBcategory() != null) {
				BundleDTO bDTO = orderService.getBPrice(oiDTO.getGcode());
				session.setAttribute("bDTO", bDTO);
			}
			
			/* 비회원 구매 시 userid 컬럼 not null 처리 */
			if (oiDTO.getUserid().length() < 1)
				oiDTO.setUserid("비회원");	// 임시 데이터로 member 테이블에 존재하는 아무 userid 입력하기
			/* 소매 상품의 bcategory 컬럼 not null 처리 1 */
			if (oiDTO.getBcategory().length() < 1)
				oiDTO.setBcategory("소매품");
			
			// 1. orderinfo 테이블에 레코드 추가
=======
			// 1. orderinfo 테이블에 레코드 추가
			
			/* 비회원 구매 시 userid 컬럼 not null 처리 1 */
			if (oiDTO.getUserid().length() < 1) {
				oiDTO.setUserid("비회원");	// 임시 데이터로 member 테이블에 존재하는 아무 userid 입력하기
			}
			
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
			int insertOrderinfo = orderService.oneGoodsOrder(oiDTO);
			System.out.println("orderinfo insert: " + insertOrderinfo);
			
			// 2. cart 테이블에 데이터가 있다면 삭제
			/*
<<<<<<< HEAD
			int deleteCart = goodsService.delete(oiDTO.getNum());
=======
			int deleteCart = CartService.delete(oiDTO.getNum());
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
			System.out.println("cart delete: " + deleteCart);
			 */
			
			// 3. 남은 재고 계산하여 goods 테이블 업데이트
			HashMap<String, Object> oiMap = new HashMap<>();
			oiMap.put("gcode", oiDTO.getGcode());
			oiMap.put("gamount", oiDTO.getGamount());
			int updateGoods = goodsService.updateAmount(oiMap);
			System.out.println("goods update: " + updateGoods);
			
<<<<<<< HEAD
			/* 비회원 구매 시 userid 컬럼 not null 처리 2
			if (oiDTO.getUserid().equals("비회원")) {
				oiDTO.setUserid(null);
			}
			소매 상품의 bcategory 컬럼 not null 처리 2
			if (oiDTO.getBcategory().equals("소매품"))
				oiDTO.setBcategory(null);
			 */
=======
			/* 비회원 구매 시 userid 컬럼 not null 처리 2 */
			if (oiDTO.getUserid().equals("비회원")) {
				oiDTO.setUserid(null);
			}
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
			
			session.setAttribute("oiDTO", oiDTO);
			session.setAttribute("success", "상품 구매 성공");
			
			return "order_success";
		}
	}
	
}
