package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.Cook_BrdDTO;
import com.dto.Info_BrdDTO;
import com.dto.IngrementDTO;

@Repository
public class BoardDAO {
	
	@Autowired
	SqlSessionTemplate session;

	public List<Cook_BrdDTO> Cook_BRD_list() {
<<<<<<< HEAD
		// TODO 래시피 게시판 보기
		List<Cook_BrdDTO> list = session.selectList("BoardMapper.Cook_selectAll");
		return list;
	}

	public void Cook_BRD_insert(Cook_BrdDTO cook) {
		System.out.println(cook);
		int n = session.insert("BoardMapper.Cook_BRD_insert",cook);
		System.out.println("변경된 값은 : "+n);
	}

=======
		List<Cook_BrdDTO> list = session.selectList("BoardMapper.Cook_selectAll");
		return list;
	}
	public void Cook_BRD_insert(Cook_BrdDTO cook) {
		int n = session.insert("BoardMapper.Cook_BRD_insert",cook);
		System.out.println("변경된 값은 : "+n);
	}
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
	public Cook_BrdDTO Cook_BRD_DetailView(int num) {
		Cook_BrdDTO dto = session.selectOne("BoardMapper.Cook_selectOne",num);
		return dto;
	}
<<<<<<< HEAD

=======
	public void Cook_BRD_modify(Cook_BrdDTO cook) {
		int n = session.update("BoardMapper.Cook_BRD_modify",cook);
		System.out.println("변경된 값 : "+n);
		
	}
	public int CookNumGet() {
		return session.selectOne("BoardMapper.CookNumGet");
	}
	public void Cook_BRD_delete(int num) {
		int n = session.delete("BoardMapper.Cook_BRD_delete",num);
		System.out.println("삭제된 값 : "+n);
	}
	
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
	
	
	
	public List<Info_BrdDTO> Info_BRD_list() {
<<<<<<< HEAD
		// TODO 사업가 게시판 보기
		List<Info_BrdDTO> list = session.selectList("BoardMapper.Info_selectAll");
		return list;
	}

=======
		List<Info_BrdDTO> list = session.selectList("BoardMapper.Info_selectAll");
		return list;
	}
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
	public void Info_BRD_insert(Info_BrdDTO info) {
		int n = session.insert("BoardMapper.Info_BRD_insert",info);
		System.out.println("변경된 값은 : "+n);
	}
<<<<<<< HEAD

=======
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
	public Info_BrdDTO Info_BRD_DetailView(int num) {
		Info_BrdDTO dto = session.selectOne("BoardMapper.Info_selectOne",num);
		return dto;
	}
<<<<<<< HEAD

	public int CookNumGet() {
		// TODO Auto-generated method stub
		return session.selectOne("BoardMapper.CookNumGet");
	}

=======
	public void Info_BRD_delete(int num) {
		int n = session.delete("BoardMapper.Info_BRD_delete",num);
		System.out.println("삭제된 값 : "+n);
	}

	
	
	

>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
	public void ingrementInsert(IngrementDTO ingre) {
		// TODO Auto-generated method stub
		session.insert("BoardMapper.ingrementInsert",ingre);
	}
<<<<<<< HEAD
=======
	public List<IngrementDTO> Ingrement_List(int num) {
		List<IngrementDTO> iList = session.selectList("BoardMapper.Ingrement_List",num);
		return iList;
	}	
	public void ingrementDelete(int num) {
		int n = session.delete("BoardMapper.ingrement_delete",num);
		System.out.println("삭제된 데이터 : "+n);
	}
	public void Info_BRD_modify(Info_BrdDTO info) {
		int n = session.update("BoardMapper.Info_BRD_modify",info);
		System.out.println("변경된 값 : "+n);
	}	
>>>>>>> 441aa5e141b7d7c243d71cd8658c8c4ff7616758
	
}
