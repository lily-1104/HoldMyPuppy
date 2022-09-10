package com.holdmypuppy.member.review;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.holdmypuppy.member.review.bo.ReviewBO;

	
@RestController
public class ReviewRestController {
	
	@Autowired
	private ReviewBO reviewBO;
	
	
	// 입양 후기 작성 게시글 업로드 API
	@PostMapping("/review/post")
	public Map<String, String> reviewCreate(
			@RequestParam("title") String title
			, @RequestParam("dogName") String dogName
			, @RequestParam("breed") String breed
			, @RequestParam(value="file", required=false) MultipartFile file
			, @RequestParam("content") String content
			, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		int memberId = (Integer) session.getAttribute("memberId");
		
		int count = reviewBO.addPost(memberId, title, dogName, breed, file, content);  
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
		
	}
	

}
