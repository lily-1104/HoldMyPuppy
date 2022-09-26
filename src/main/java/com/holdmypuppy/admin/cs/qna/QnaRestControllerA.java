package com.holdmypuppy.admin.cs.qna;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.holdmypuppy.admin.cs.qna.bo.AdQnaBO;

public class QnaRestControllerA {
	
	
	@Autowired
	private AdQnaBO qnaBO;
	
	
	
	// 1:1 문의 삭제
	@GetMapping("/qna/post/delete")
	public Map<String, String> deleteQna(@RequestParam("qnaId") int qnaId) {
		
		Map<String, String> map = new HashMap<>();
		
		int count = qnaBO.deleteQna(qnaId);
		
		if(count == 1) {
			map.put("result", "success");
			
		} else {
			map.put("result", "fail");
			
		} 
		
		return map;
		
	}

}
