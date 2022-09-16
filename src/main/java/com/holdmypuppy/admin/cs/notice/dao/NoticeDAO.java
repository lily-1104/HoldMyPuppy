package com.holdmypuppy.admin.cs.notice.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.holdmypuppy.admin.cs.notice.model.Notice;

@Repository
public interface NoticeDAO {
	
	
	// 공지사항 작성 (관리자)
	public int insertNotice(
			@Param("memberId") int memberId
			, @Param("title") String title
			, @Param("imagePath") String imagePath
			, @Param("content") String content);
	
	
	
	// 공지사항 리스트
	public List<Notice> selectNoticeList();
	
	
}
