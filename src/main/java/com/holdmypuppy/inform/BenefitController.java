package com.holdmypuppy.inform;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BenefitController {
	
	
	// 입양 혜택 
	// http://localhost:8080/adoption/benefit
	@GetMapping("/adoption/benefit")
	public String benefitView(Model model) {
		
		model.addAttribute("viewName", "inform/benefit");
		
		return "template/layout";
	}
	
	
}
