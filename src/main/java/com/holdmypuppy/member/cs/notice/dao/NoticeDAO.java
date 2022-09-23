package com.holdmypuppy.member.cs.notice.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.holdmypuppy.member.cs.notice.model.Notice;

@Repository
public interface NoticeDAO {
	
	
	// 공지사항 리스트
	public List<Notice> selectNoticeList();
	
	
	
	// 공지사항 조회
	public Notice selectNotice(@Param("id") int id);

}
