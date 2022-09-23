package com.holdmypuppy.member.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.holdmypuppy.member.review.bo.ReviewBO;
import com.holdmypuppy.member.review.model.Review;

@Controller
@RequestMapping("/review")
public class ReviewController {
	
	
	@Autowired
	private ReviewBO reviewBO;
	
	
	// 입양 후기 리스트
	@GetMapping("")
	public String reviewList(Model model) {
		
		List<Review> reviewList = reviewBO.getReviewList();
		model.addAttribute("reviewList", reviewList);
		
		return "/member/review/reviewList";
	}
	
	
	
	// 입양 후기 작성
	@GetMapping("/post")
	public String reviewPost() {
		
		return "/member/review/reviewPost";
	}
	
	
	
	// 입양 후기 수정 
	@GetMapping("/modify")
	public String reviewModify(@RequestParam("id") int id, Model model) {
		
		Review review = reviewBO.getReview(id);
		
		model.addAttribute("review", review);
		
		return "/member/review/reviewModify";
	}
	
	
	
	// 입양 후기 조회 (detail)
	@GetMapping("/detail")
	public String reviewDetail(@RequestParam("id") int id, Model model) {
		
		Review review = reviewBO.getReview(id);
		
		model.addAttribute("review", review);
		
		return "/member/review/reviewDetail";
	}
	

}
