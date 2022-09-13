package com.holdmypuppy.member.about;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AboutController {
	
	// about 페이지 연결
	@GetMapping("/shelter")
	public String aboutView() {
		return "/member/about/about";
	}
	
	
	
	// 카카오 지도 연결
//	@GetMapping("/address")
//	public String address) {
//		
//		return "/member/about/about";
//	}
	
}