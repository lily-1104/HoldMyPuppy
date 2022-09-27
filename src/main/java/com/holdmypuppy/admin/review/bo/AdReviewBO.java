package com.holdmypuppy.admin.review.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.holdmypuppy.admin.review.dao.AdReviewDAO;
import com.holdmypuppy.admin.review.model.AdReview;
import com.holdmypuppy.common.FileManagerService;

@Service
public class AdReviewBO {
	
	
	@Autowired
	private AdReviewDAO adReviewDAO;
	
	
	// 입양 후기 리스트
	public List<AdReview> getReviewList() {
			
		return adReviewDAO.selectReviewList();
		
	}
	
	
	
	// 입양 후기 조회 (detail)
	public AdReview getReview(int id) {
		
		return adReviewDAO.selectReview(id);
	}
	
	
	
	// 입양 후기 삭제
	public int deleteReview(int reviewId) {
		
		AdReview review = adReviewDAO.selectReview(reviewId);
		
		String imagePath = review.getFile();
		FileManagerService.removeFile(imagePath);
		
		return adReviewDAO.deleteReview(reviewId);
		
	}

}
