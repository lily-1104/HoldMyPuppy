package com.holdmypuppy.member.cs.qna;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class QnaController {
	
	
	// 1:1 문의
	@GetMapping("/qna")
	public String qnaList() {
		
		return "/member/cs/qna/qnaList";
	}

}
