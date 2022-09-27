package com.holdmypuppy.admin.review.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.holdmypuppy.admin.review.model.AdReview;

public interface AdReviewDAO {
	
	
	// 입양 후기 리스트
	public List<AdReview> selectReviewList();
	
	
	
	// 입양 후기 조회 (detail)
	public AdReview selectReview(@Param("id") int id);
	
	
	
	// 입양 후기 삭제
	public int deleteReview(@Param("reviewId") int reviewId);

}
