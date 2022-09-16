package com.holdmypuppy.admin.inform;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BenefitControllerAdmin {
	
	
	// 입양 혜택
	@GetMapping("/admin/adoption/benefit")
	public String benefit() {
		
		return "/admin/inform/benefitA";
	}

}
