package com.holdmypuppy.member.cs.qna;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.holdmypuppy.member.cs.qna.bo.QnaBO;

@RestController
public class QnaRestController {
	
	
	@Autowired
	private QnaBO qnaBO;
	
	
	// 1:1 문의 업로드
	@PostMapping("/qna/post")
	public Map<String, String> qnaPost(
			@RequestParam("title") String title
			, @RequestParam("content") String content
			, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
			
		int memberId = (Integer)session.getAttribute("memberId");
		
		int count = qnaBO.addQna(memberId, title, content);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
	}
	
	
	
	// 글 수정
	@PostMapping("/qna/post/update")
	public Map<String, String> updateQna(
			@RequestParam("qnaId") int qnaId
			, @RequestParam("title") String title
			, @RequestParam("content") String content) {
		
		int count = qnaBO.updatePost(qnaId, title, content);
		
		Map<String, String> map = new HashMap<>();
		
		if (count == 1) {
			map.put("result", "success");
			
		} else {
			map.put("result", "fail");
		}
		
		return map;
		
	}
	
	
	
	
	
	
	
	

}
