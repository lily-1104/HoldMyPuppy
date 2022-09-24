package com.holdmypuppy.member.review.comment.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.holdmypuppy.member.review.comment.model.RvComment;

@Repository
public interface RvCommentDAO {
   
   
	// 입양 후기에 댓글 달기
	public int insertComment(
			@Param("reviewId") int reviewId
			, @Param("memberId") int memberId
			, @Param("content") String content);
	
	
	
	// 댓글 조회 기능
	public List<RvComment> selectCommentListByReviewId(@Param("reviewId") int reviewId);
	

}
