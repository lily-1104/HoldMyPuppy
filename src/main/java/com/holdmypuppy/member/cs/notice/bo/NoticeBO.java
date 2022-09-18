package com.holdmypuppy.member.cs.notice.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.holdmypuppy.member.cs.notice.dao.NoticeDAO;
import com.holdmypuppy.member.cs.notice.model.Notice;

@Service
public class NoticeBO {
	
	@Autowired
	private NoticeDAO noticeDAO;
	
	
	// 공지사항 리스트
	public List<Notice> getNoticeList() {
		
		return noticeDAO.selectNoticeList();
		
	}
	
}
