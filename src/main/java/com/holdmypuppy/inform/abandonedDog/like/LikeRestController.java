package com.holdmypuppy.inform.abandonedDog.like;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.holdmypuppy.inform.abandonedDog.like.bo.LikeBO;

@RestController
public class LikeRestController {
	
	
	@Autowired
	private LikeBO likeBO;
	
	
	// 좋아요 
	@RequestMapping("/like")
	public Map<String, Object> likeToggle(
			@RequestParam(value="dog_id") int abandonedDogId,
			HttpSession session) {
		
		// 로그인 여부 확인
		Map<String, Object> result = new HashMap<>();
		Integer userId = (Integer) session.getAttribute("userId");
		
		if (userId == null) {
			
			result.put("code", 500);
			result.put("errorMessage", "로그인 해주세요");
			
			return result;
		}
		
		// like 여부 체크
		likeBO.likeToggle(abandonedDogId, userId);
		
		// 응답값
		result.put("code", 200);
		result.put("result", "성공");
		
		return result;
		
	}

}
