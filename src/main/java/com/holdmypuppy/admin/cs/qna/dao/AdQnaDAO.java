package com.holdmypuppy.admin.cs.qna.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.holdmypuppy.admin.cs.qna.model.AdQna;

@Repository
public interface AdQnaDAO {
	
	
	// 1:1 문의 내역
	public List<AdQna> selectQnaList();
	
	
	
	// 1:1 문의 상세 조회
	public AdQna selectQna(@Param("id") int id);
	
	
	
	// 1:1 문의 삭제
	public int deleteQna(@Param("qnaId") int qndId);

}
