package com.holdmypuppy.member.review.comment.model;

import com.holdmypuppy.member.login.model.Member;

public class RvCommentDetail {
	
	private RvComment rvComment;
	private Member member;
	
	public RvComment getRvComment() {
		return rvComment;
	}
	public void setRvComment(RvComment rvComment) {
		this.rvComment = rvComment;
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}

}
