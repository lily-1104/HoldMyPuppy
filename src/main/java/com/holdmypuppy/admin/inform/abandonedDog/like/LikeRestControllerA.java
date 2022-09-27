package com.holdmypuppy.admin.inform.abandonedDog.like;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.holdmypuppy.admin.inform.abandonedDog.like.bo.AdLikeBO;

@RestController
public class LikeRestControllerA {
	
	
	@Autowired
	private AdLikeBO adLikeBO;
	
	
	// 유기견 좋아요 
	@GetMapping("puppy/like")
	public Map<String, String> puppyLike(
			@RequestParam("abandonedDogId") int abandonedDogId
			, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		int memberId = (Integer)session.getAttribute("memberId");
		
		Map<String, String> map = new HashMap<>();
		
		int count = adLikeBO.addLike(abandonedDogId, memberId);
		
		if(count == 1) {
			map.put("result", "success");
			
		} else {
			map.put("result", "fail");
		}
		
		return map;
		
	}
	

}
