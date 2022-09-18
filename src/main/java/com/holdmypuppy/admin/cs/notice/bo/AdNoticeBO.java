package com.holdmypuppy.admin.cs.notice.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.holdmypuppy.admin.cs.notice.dao.AdNoticeDAO;
import com.holdmypuppy.admin.cs.notice.model.AdNotice;
import com.holdmypuppy.common.FileManagerService;

@Service
public class AdNoticeBO {
	
	@Autowired
	private AdNoticeDAO noticeDAO;
	
	
	// 공지사항 작성 (관리자)
	public int addNotice(
			int memberId
			, String title
			, MultipartFile file
			, String content) {
		
		// 파일 저장 경로 만들어서 DAO로 전달
		String imagePath = FileManagerService.saveFile(memberId, file);
		
		return noticeDAO.insertNotice(memberId, title, imagePath, content);
		
	}
	
	
	
	// 공지사항 리스트
	public List<AdNotice> getNoticeList() {
		
		return noticeDAO.selectNoticeList();
	}
	
	
	
	

}
