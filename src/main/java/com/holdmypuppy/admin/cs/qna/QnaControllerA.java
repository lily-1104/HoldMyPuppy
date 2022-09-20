package com.holdmypuppy.admin.cs.qna;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/qna")
public class QnaControllerA {
	
	
	// 1:1 문의
	@GetMapping("")
	public String qnaList() {
		
		return "/admin/cs/qna/qnaListA";
	}
	
	
	
	// 1:1 문의 상세 조회
	@GetMapping("/detail")
	public String qnaDetail() {
		
		return "/admin/cs/qna/qnaDetailA";
	}

}
