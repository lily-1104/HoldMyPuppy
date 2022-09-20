package com.holdmypuppy.member.cs.qna;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.holdmypuppy.member.cs.qna.bo.QnaBO;
import com.holdmypuppy.member.cs.qna.model.Qna;

@Controller
@RequestMapping("/qna")
public class QnaController {
	
	
	@Autowired
	private QnaBO qnaBO;
	
	
	// 1:1 문의 리스트 (작성자 본인 것만 조회 가능)
	@GetMapping("")
	public String qnaList(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		
		// 로그인한 사용자의 memberId
		int memberId = (Integer)session.getAttribute("memberId");
		
		List<Qna> qnaList = qnaBO.getQnaList(memberId);
		model.addAttribute("qnaList", qnaList);
		
		return "/member/cs/qna/qnaList";
		
	}
	
	
	
	// 1:1 문의 작성
	@GetMapping("/post")
	public String qnaPost() {
		
	    return "/member/cs/qna/qnaPost";
	}
	
	
	
	// 1:1 문의 상세 조회
	@GetMapping("/detail")
	public String qnaDetail(@RequestParam("id") int id, Model model) {
		
		Qna qna = qnaBO.getQna(id);
		
		model.addAttribute("qna", qna);
		
	    return "/member/cs/qna/qnaDetail";
	}
	

}
