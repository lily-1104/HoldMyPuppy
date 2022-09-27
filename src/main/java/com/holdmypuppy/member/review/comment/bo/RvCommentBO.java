package com.holdmypuppy.member.review.comment.bo;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.holdmypuppy.member.login.bo.MemberBO;
import com.holdmypuppy.member.login.model.Member;
import com.holdmypuppy.member.review.comment.dao.RvCommentDAO;
import com.holdmypuppy.member.review.comment.model.RvComment;
import com.holdmypuppy.member.review.comment.model.RvCommentDetail;

@Service
public class RvCommentBO {
   
	@Autowired
	private RvCommentDAO rvCommentDAO;
	
	
	@Autowired
	private MemberBO memberBO;
   
   
	// 입양 후기에 댓글 달기
	public int addComment(int reviewId, int memberId, String content) {
      
		return rvCommentDAO.insertComment(reviewId, memberId, content);
	}
	
	
	
	// 댓글 조회 기능
	public List<RvCommentDetail> getCommentListByReviewId(int reviewId) {
		
		List<RvComment> commentList = rvCommentDAO.selectCommentListByReviewId(reviewId);
		
		List<RvCommentDetail> commentDetailList = new ArrayList<>();
		
		for(RvComment rvComment : commentList) {
			
			int memberId = rvComment.getMemberId();
			Member member = memberBO.getMemberById(memberId);
			
			RvCommentDetail rvCommentDetail = new RvCommentDetail();
			rvCommentDetail.setRvComment(rvComment);
			rvCommentDetail.setMember(member);
			
			commentDetailList.add(rvCommentDetail);
		}
		
		return commentDetailList;
		
	}
	
	
	
	// 댓글 삭제
	public int deleteComment(int commentId) {
		
		return rvCommentDAO.deleteComment(commentId);
		
	}

}
