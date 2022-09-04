package com.holdmypuppy.review;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ReviewController {
	
	// 입양 후기 리스트
	@GetMapping("/review")
	public String reviewList() {
		
		return "/review/list";
	}

}
