package com.holdmypuppy.review;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.holdmypuppy.review.bo.ReviewBO;
import com.holdmypuppy.review.model.Review;

@Controller
public class ReviewController {
	
	
	@Autowired
	private ReviewBO reviewBO;
	
	
	// 입양 후기 리스트
	@GetMapping("/review")
	public String reviewList(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		
		int memberId = (Integer)session.getAttribute("memberId");
		
		List<Review> reviewList = reviewBO.getReviewList(memberId);
		model.addAttribute("reviewPostList", reviewList);
		
		return "/review/list";
	}
	
	
	
	// 입양 후기 작성
	@GetMapping("/review/post")
	public String reviewPost() {
		
		return "/review/post";
	}
	
	
	
	// 입양 후기 조회 (detail)
	@GetMapping("/review/detail_view")
	public String reviewDetail() {
		
		return "/review/detail";
	}
	

}
