package com.holdmypuppy.admin.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.holdmypuppy.admin.review.bo.AdReviewBO;
import com.holdmypuppy.admin.review.model.AdReview;

@Controller
@RequestMapping("/admin/review")
public class ReviewControllerAdmin {
	
	
	@Autowired
	private AdReviewBO adReviewBO;
	
	
	// 입양 후기 리스트
	@GetMapping("")
	public String reviewAdmin(Model model) {
		
		List<AdReview> reviewList = adReviewBO.getReviewList();
		model.addAttribute("reviewList", reviewList);
		
		return "/admin/review/reviewListA";
	}
	
	
	
	// 입양 후기 조회 (detail)
	@GetMapping("/detail")
	public String reviewDetail(@RequestParam("id") int id, Model model) {
		
		AdReview review = adReviewBO.getReview(id);
		model.addAttribute("review", review);
		
		return "/admin/review/reviewDetailA";
	}
	

}
