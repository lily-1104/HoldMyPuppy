package com.holdmypuppy.admin.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainControllerAdmin {
	
	
	// 메인 페이지 연결
	@GetMapping("/admin/main")
	public String mainViewAdmin() {
		return "admin/main/main_admin";
	}

}
