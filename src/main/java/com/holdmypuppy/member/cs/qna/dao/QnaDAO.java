package com.holdmypuppy.member.cs.qna.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.holdmypuppy.member.cs.qna.model.Qna;

@Repository
public interface QnaDAO {
	
	
	// 1:1 문의 업로드
	public int insertPost(
			@Param("memberId") int memberId
			, @Param("title") String title
			, @Param("content") String content);
	
	
	
	// 1:1 문의 리스트
	public List<Qna> selectQnaList();

}
