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
	
	
	
	// 1:1 문의 리스트 (작성자 본인 것만 조회 가능)
	public List<Qna> getQnaList(int memberId) {
		
		return qnaDAO.selectQnaList(memberId);
	}
	
	
	
	// 1:1 문의 상세 조회
	public Qna getQna() {
		
		return qnaDAO.selectQna();
		
	}
	
	
	
	// 글 수정
	public int updatePost(int qnaId, String title, String content) {
		
		return qnaDAO.updateQna(qnaId, title, content);
	}
	
	
	
	
	
}
