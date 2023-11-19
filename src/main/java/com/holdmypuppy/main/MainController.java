package com.holdmypuppy.main;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	
	// 메인 페이지 연결
	// http://localhost:8080/main
	@GetMapping("/main")
	public String mainView(Model model) {
		
		model.addAttribute("viewName", "main/main");
		
		return "template/layout";
		
	}

}
