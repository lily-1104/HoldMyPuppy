package com.holdmypuppy.member.review;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.holdmypuppy.member.review.bo.ReviewBO;

	
@RestController
@RequestMapping("/review/post")
public class ReviewRestController {
	
	@Autowired
	private ReviewBO reviewBO;
	
	
	// 입양 후기 작성 게시글 업로드 API
	@PostMapping("")
	public Map<String, String> reviewCreate(
			@RequestParam("title") String title
			, @RequestParam("dogName") String dogName
			, @RequestParam("breed") String breed
			, @RequestParam("file") MultipartFile file
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
	
	
	
	// 입양 후기 수정
	@PostMapping("/update")
	public Map<String, String> updateReview(
			@RequestParam("reviewId") int reviewId
			, @RequestParam("title") String title
			, @RequestParam("dogName") String dogName
			, @RequestParam("breed") String breed
			, @RequestParam("content") String content
			, HttpServletRequest request) {
		
		int count = reviewBO.updateReview(reviewId, title, dogName, breed, content);
		
		Map<String, String> map = new HashMap<>();
		
		if(count == 1) {
			map.put("result", "success");
			
		} else {
			map.put("result", "fail");
		}
		
		return map;
		
	}
	
	
	
	// 입양 후기 삭제
	@GetMapping("/delete")
	public Map<String, String> deleteReview(@RequestParam("reviewId") int reviewId) {
		
		Map<String, String> map = new HashMap<>();
		
		int count = reviewBO.deleteReview(reviewId);
		
		if(count == 1) {
			map.put("result", "success");
			
		} else {
			map.put("result", "fail");
		}
		
		return map;
		
	}
	

}
