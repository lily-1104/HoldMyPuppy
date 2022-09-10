package com.holdmypuppy.member.review.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.holdmypuppy.common.FileManagerService;
import com.holdmypuppy.member.review.dao.ReviewDAO;
import com.holdmypuppy.member.review.model.Review;

@Service
public class ReviewBO {
	
	@Autowired
	private ReviewDAO reviewDAO;
	
	
	// 입양 후기 작성 게시글 업로드 API
	public int addPost(
			int memberId
			, String title
			, String dogName
			, String breed
			, MultipartFile file
			, String content) {
		
		// 파일 저장
		String imagePath = FileManagerService.saveFile(memberId, file);
		
		return reviewDAO.addPost(memberId, title, dogName, breed, imagePath, content);  
		
	}
	
	
	
	// 입양 후기 리스트
	public List<Review> getReviewList(int memberId) {
		
		return reviewDAO.selectReviewList(memberId);
	}
	
	
}
