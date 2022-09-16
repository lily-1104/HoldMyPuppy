package com.holdmypuppy.admin.about;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AboutControllerAdmin {
	
	// about 페이지 연결
	@GetMapping("/admin/shelter")
	public String aboutView() {
		return "/admin/about/aboutA";
	}
	
}
