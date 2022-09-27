package com.holdmypuppy.member.review.comment;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.holdmypuppy.member.review.comment.bo.RvCommentBO;

@RestController
@RequestMapping("/review/comment")
public class RvCommentRestController {
	
   
	@Autowired
	private RvCommentBO rvCommentBO;
   
   
	// 입양 후기에 댓글 달기
	@PostMapping("/create")
	public Map<String, String> createComment(
			@RequestParam("reviewId") int reviewId
			, @RequestParam("content") String content
         	, HttpServletRequest request) {
      
		HttpSession session = request.getSession();
		int memberId = (Integer)session.getAttribute("memberId");
      
		Map<String, String> map = new HashMap<>();
      
		int count = rvCommentBO.addComment(reviewId, memberId, content);
      
		if(count == 1) {
			map.put("result", "success");
         
		} else {
			map.put("result", "fail");
		}
      
		return map;
      
	}
	
	
	
	// 댓글 삭제
	@GetMapping("/delete")
	public Map<String, String> deleteComment(@RequestParam("commentId") int commentId) {
		
		Map<String, String> map = new HashMap<>();
		
		int count = rvCommentBO.deleteComment(commentId);
		
		if(count == 1) {
			map.put("result", "success");
			
		} else {
			map.put("result", "fail");
		}
		
		return map;
		
	}

}
