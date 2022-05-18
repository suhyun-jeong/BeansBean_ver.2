package com.service;

<<<<<<< HEAD
import java.util.HashMap;

=======
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.OrderDAO;
<<<<<<< HEAD
import com.dto.BundleDTO;
=======
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
import com.dto.OrderinfoDTO;

@Service
public class OrderService {
	
	@Autowired
	OrderDAO dao;
	
	// 상품 한 개 주문하기
	public int oneGoodsOrder(OrderinfoDTO oiDTO) {
		return dao.oneGoodsOrder(oiDTO);
	}
<<<<<<< HEAD

	// 도매 상품의 가격 가져오기
	public BundleDTO getBPrice(String gcode) {
		return dao.getBPrice(gcode);
	}
	
=======
	

>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
}
