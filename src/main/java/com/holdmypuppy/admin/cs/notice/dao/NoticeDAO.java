package com.holdmypuppy.admin.cs.notice.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface NoticeDAO {
	
	
	// 공지사항 작성 (관리자)
	public int insertNotice(
			@Param("memberId") int memberId
			, @Param("title") String title
			, @Param("imagePath") String imagePath
			, @Param("content") String content);
	
}
