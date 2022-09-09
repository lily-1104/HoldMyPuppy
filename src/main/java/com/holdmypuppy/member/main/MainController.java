package com.holdmypuppy.member.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	
	// 메인 페이지 연결
	@GetMapping("/main")
	public String mainView() {
		return "member/main/main";
	}

}
