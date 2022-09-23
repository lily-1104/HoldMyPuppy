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
	
	
	
	// 입양 후기 수정
	public int updateReview(
			int reviewId
			, String title
			, String dogName
			, String breed
			, String content) {
		
		return reviewDAO.updateReview(reviewId, title, dogName, breed, content);
		
	}
	
	
	
	// 입양 후기 삭제
	public int deleteReview(int reviewId) {
		
		Review review = reviewDAO.selectReview(reviewId);
		
		String imagePath = review.getFile();
		FileManagerService.removeFile(imagePath);
		
		return reviewDAO.deleteReview(reviewId);
	}
	
	
	
	// 입양 후기 리스트
	public List<Review> getReviewList() {
		
		return reviewDAO.selectReviewList();
	}
	
	
	
	// 입양 후기 조회 (detail)
	public Review getReview(int id) {
		
		return reviewDAO.selectReview(id);
	}
	
	
}
