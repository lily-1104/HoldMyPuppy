package com.holdmypuppy.member.inform;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BenefitController {
	
	
	// 입양 혜택
	@GetMapping("/adoption/benefit")
	public String benefit() {
			
		return "/member/inform/benefit";
	}

}
