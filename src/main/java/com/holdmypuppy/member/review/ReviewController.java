package com.holdmypuppy.member.review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.holdmypuppy.member.review.bo.ReviewBO;

@Controller
public class ReviewController {
	
	
	@Autowired
	private ReviewBO reviewBO;
	
	
	// 입양 후기 리스트
	@GetMapping("/review")
	public String reviewList() {
		
		
//	public String reviewList(HttpServletRequest request, Model model) {
		
//		HttpSession session = request.getSession();
//		
//		int memberId = (Integer)session.getAttribute("memberId");
//		
//		List<Review> reviewList = reviewBO.getReviewList(memberId);
//		model.addAttribute("reviewPostList", reviewList);
		
//		model.addAttribute("reviewPostList");
		
		return "/member/review/list";
	}
	
	
	
	// 입양 후기 작성
	@GetMapping("/review/post")
	public String reviewPost() {
		
		return "/member/review/post";
	}
	
	
	
	// 입양 후기 조회 (detail)
	@GetMapping("/review/detail_view")
	public String reviewDetail() {
		
		return "/member/review/detail";
	}
	

}
