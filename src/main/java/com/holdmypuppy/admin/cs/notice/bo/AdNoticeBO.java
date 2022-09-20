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
			String title
			, MultipartFile file
			, String content) {
		
		// 파일 저장 경로 만들어서 DAO로 전달
		// 이미지 파일 유무에 따라 많이 쓰임 ★
		String imagePath = null;
		if (file != null) {		// 이미지 파일이 있으면 파일을 저장 
			
			imagePath = FileManagerService.saveFile(0, file);
		}
		
		return noticeDAO.insertNotice(title, imagePath, content);
	}
	
	
	
	// 공지사항 리스트
	public List<AdNotice> getNoticeList() {
		
		return noticeDAO.selectNoticeList();
	}
	
	

}
