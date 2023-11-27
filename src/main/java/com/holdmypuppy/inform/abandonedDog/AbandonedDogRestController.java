package com.holdmypuppy.inform.abandonedDog;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.holdmypuppy.inform.abandonedDog.bo.AbandonedDogBO;

@RequestMapping("/abandoned_dog/post")
@RestController
public class AbandonedDogRestController {
	
	
	@Autowired
	private AbandonedDogBO abandonedDogBO;
	
	
	// 유기견 등록 API
	@PostMapping("/create")
	public Map<String, Object> create(
			@RequestParam("title") String title,
			@RequestParam("dogName") String dogName,
			@RequestParam("breed") String breed,
			@RequestParam("age") int age,
			@RequestParam("gender") String gender,
			@RequestParam("neutralization") String neutralization,
			@RequestParam("mbti") String mbti,
			@RequestParam("file") MultipartFile file,
			@RequestParam("content") String content,
			HttpSession session) {
		
		Integer userId = (Integer) session.getAttribute("userId");
		String userLoginId = (String) session.getAttribute("userLoginId");
		
		Map<String, Object> result = new HashMap<>();
		
		if (userId == null) {
			
			result.put("code", 500);
			result.put("result", "error");
			result.put("errorMessage", "로그인 해주세요");
			return result;
		}
		
		result.put("code", 200);
		result.put("result", "성공");
		
		// DB insert
		abandonedDogBO.addDog(userId, userLoginId, title, dogName, breed, age, gender, neutralization, mbti, content, file);
		
		return result;
		
	}
	
	
	
}
