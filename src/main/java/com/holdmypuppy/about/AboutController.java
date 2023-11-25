package com.holdmypuppy.about;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AboutController {
	
	
	// ABOUT 페이지 연결
	// http://localhost:8080/shelter
	@GetMapping("/shelter")
	public String shelterView(Model model) {
					
		model.addAttribute("viewName", "about/about");
					
		return "template/layout";
					
	}

}
