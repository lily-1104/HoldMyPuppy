package com.holdmypuppy.admin.review;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.holdmypuppy.admin.review.bo.AdReviewBO;

@RestController
public class ReviewRestControllerA {
	
	
	@Autowired
	private AdReviewBO adReviewBO;
	
	
	// 입양 후기 삭제
	@GetMapping("/admin/review/post/delete")
	public Map<String, String> deleteReview(@RequestParam("reviewId") int reviewId) {
		
		Map<String, String> map = new HashMap<>();
		
		int count = adReviewBO.deleteReview(reviewId);
		
		if(count == 1) {
			map.put("result", "success");
			
		} else {
			map.put("result", "fail");
		}
		
		return map;
		
	}

}
