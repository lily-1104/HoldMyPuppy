package com.holdmypuppy.admin.cs.notice.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.holdmypuppy.admin.cs.notice.model.AdNotice;

@Repository
public interface AdNoticeDAO {
	
	
	// 공지사항 작성 (관리자)
	public int insertNotice(
			@Param("title") String title
			, @Param("imagePath") String imagePath
			, @Param("content") String content);
	
	
	
	// 공지사항 리스트
	public List<AdNotice> selectNoticeList();
	
	
	
	// 공지사항 보기
	public AdNotice selectNotice(@Param("id") int id);
	
	
	
	// 공지사항 수정
	public int updateNotice(
			@Param("noticeId") int noticeId
			, @Param("title") String title
			, @Param("content") String content);
	
	
	
	// 공지사항 삭제
	public int deleteNotice(@Param("noticeId") int noticeId);
	
}
