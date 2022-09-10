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
	
	
	
	// 입양 후기 리스트
	public List<Review> selectReviewList(@Param("memberId") int memberId);
	

}
