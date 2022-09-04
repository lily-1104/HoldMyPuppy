package com.holdmypuppy.about;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AboutController {
	
	// about 페이지 연결
	@GetMapping("/shelter")
	public String aboutView() {
		return "/about/about";
	}
	
}
