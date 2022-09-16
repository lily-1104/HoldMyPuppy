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
	
	
	
	// 1:1 문의 리스트 (작성자 본인 것만 조회 가능)
	public List<Qna> selectQnaList(@Param("memberId") int memberId);
	
	
	
	// 1:1 문의 상세 조회
	public Qna selectQna(@Param("id") int id);

}
