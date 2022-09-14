package com.holdmypuppy.member.cs.qna.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.holdmypuppy.member.cs.qna.dao.QnaDAO;
import com.holdmypuppy.member.cs.qna.model.Qna;

@Service
public class QnaBO {
	
	
	@Autowired
	private QnaDAO qnaDAO;
	
	
	// 1:1 문의 업로드
	public int addQna(int memberId, String title, String content) {
		
		return qnaDAO.insertPost(memberId, title, content);
	}
	
	
	
	// 1:1 문의 리스트
	public List<Qna> getQnaList() {
		
		return qnaDAO.selectQnaList();
	}
	
}
