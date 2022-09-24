package com.holdmypuppy.admin.cs.qna.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.holdmypuppy.admin.cs.qna.dao.AdQnaDAO;
import com.holdmypuppy.admin.cs.qna.model.AdQna;
import com.holdmypuppy.member.cs.qna.model.Qna;


@Service
public class AdQnaBO {
	
	
	@Autowired
	private AdQnaDAO qnaDAO;
	
	
	// 1:1 문의 내역
	public List<AdQna> getQnaList() {
		
		return qnaDAO.selectQnaList();
	}
	
	
	
	// 1:1 문의 상세 조회
	public AdQna getQna(int id) {
		
		return qnaDAO.selectQna(id);
	}

}
