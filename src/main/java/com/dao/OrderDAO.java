package com.dao;

<<<<<<< HEAD
import java.util.HashMap;

=======
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

<<<<<<< HEAD
import com.dto.BundleDTO;
=======
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
import com.dto.OrderinfoDTO;

@Repository
public class OrderDAO {

	@Autowired
	SqlSessionTemplate session;

	// 상품 한 개 주문하기
	public int oneGoodsOrder(OrderinfoDTO oiDTO) {
		return session.insert("OrderMapper.oneGoodsOrder", oiDTO);
	}
<<<<<<< HEAD

	// 도매 상품의 가격 가져오기
	public BundleDTO getBPrice(String gcode) {
		return session.selectOne("OrderMapper.getBPrice", gcode);
	}
=======
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
	
}
