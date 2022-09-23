package com.holdmypuppy.member.review.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.holdmypuppy.member.review.model.Review;

@Repository
public interface ReviewDAO {
	
	
	// 입양 후기 작성 게시글 업로드 API
	public int addPost(
			@Param("memberId") int memberId
			, @Param("title") String title
			, @Param("dogName") String dogName
			, @Param("breed") String breed
			, @Param("imagePath") String imagePath
			, @Param("content") String content);
	
	
	
	// 입양 후기 수정
	public int updateReview(
			@Param("reviewId") int reviewId
			, @Param("title") String title
			, @Param("dogName") String dogName
			, @Param("breed") String breed
			, @Param("content") String content);
	
	
	
	// 입양 후기 삭제
	public int deleteReview(@Param("reviewId") int reviewId);
	
	
	
	// 입양 후기 리스트
	public List<Review> selectReviewList();
	
	
	
	// 입양 후기 조회 (detail)
	public Review selectReview(@Param("id") int id);
	
	

}
