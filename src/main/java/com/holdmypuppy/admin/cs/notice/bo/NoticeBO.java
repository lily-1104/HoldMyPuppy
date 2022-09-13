package com.holdmypuppy.admin.cs.notice.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.holdmypuppy.admin.cs.notice.dao.NoticeDAO;
import com.holdmypuppy.common.FileManagerService;

@Service
public class NoticeBO {
	
	@Autowired
	private NoticeDAO noticeDAO;
	
	
	// 공지사항 작성 (관리자)
	public int addNotice(
			int memberId
			, String title
			, MultipartFile file
			, String content) {
		
		// 파일 저장
		String imagePath = FileManagerService.saveFile(memberId, file);
		
		return noticeDAO.insertNotice(memberId, title, imagePath, content);
		
	}
	
	
	
	
	

}
