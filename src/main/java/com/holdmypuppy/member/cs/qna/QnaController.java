package com.holdmypuppy.member.cs.qna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.holdmypuppy.member.cs.qna.bo.QnaBO;
import com.holdmypuppy.member.cs.qna.model.Qna;

@Controller
@RequestMapping("/qna")
public class QnaController {
	
	
	@Autowired
	private QnaBO qnaBO;
	
	
	// 1:1 문의 리스트
	@GetMapping("")
	public String qnaList() {
		
		List<Qna> qnaList = qnaBO.getQnaList();
		
		return "/member/cs/qna/qnaList";
	}
	
	
	
	// 1:1 문의 작성
	@GetMapping("/post")
	public String qnaPost() {
		
	    return "/member/cs/qna/qnaPost";
	}
	
	
	
	// 1:1 문의 조회
	@GetMapping("/detail_view")
	public String qnaDetail() {
		
	    return "/member/cs/qna/qnaDetail";
	}
	

}
