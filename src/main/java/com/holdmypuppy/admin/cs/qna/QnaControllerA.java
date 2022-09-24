package com.holdmypuppy.admin.cs.qna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.holdmypuppy.admin.cs.qna.bo.AdQnaBO;
import com.holdmypuppy.admin.cs.qna.model.AdQna;
import com.holdmypuppy.member.cs.qna.model.Qna;

@Controller
@RequestMapping("/admin/qna")
public class QnaControllerA {
	
	
	@Autowired
	private AdQnaBO qnaBO;
	
	
	// 1:1 문의 내역
	@GetMapping("")
	public String qnaList(Model model) {
		
		List<AdQna> qnaList = qnaBO.getQnaList();

		model.addAttribute("qnaList", qnaList);
		
		return "/admin/cs/qna/qnaListA";
		
	}
	
	
	
	// 1:1 문의 상세 조회
	@GetMapping("/detail")
	public String qnaDetail(@RequestParam("id") int id, Model model) {
		
		AdQna qna = qnaBO.getQna(id);
		
		model.addAttribute("qna", qna);
		
		return "/admin/cs/qna/qnaDetailA";
	}

}
