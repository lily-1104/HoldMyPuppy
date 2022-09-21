package com.holdmypuppy.admin.cs.qna.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.holdmypuppy.admin.cs.qna.model.AdQna;

@Repository
public interface AdQnaDAO {
	
	
	// 1:1 문의 내역
	public List<AdQna> selectQnaList();

}
