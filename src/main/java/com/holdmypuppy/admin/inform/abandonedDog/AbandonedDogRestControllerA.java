package com.holdmypuppy.admin.inform.abandonedDog;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.holdmypuppy.admin.inform.abandonedDog.bo.AdAbandonedDogBO;

@RestController
public class AbandonedDogRestControllerA {
	
	@Autowired
	private AdAbandonedDogBO adAbandonedDogBO;
	
	
	// 유기견 등록 API
	@PostMapping("/admin/puppyPost")
	public Map<String, String> postCreate(
	        @RequestParam("title") String title
	        , @RequestParam("dogName") String dogName
	        , @RequestParam("breed") String breed
	        , @RequestParam("age") int age
	        , @RequestParam("gender") String gender
	        , @RequestParam("vaccination") String vaccination
	        , @RequestParam("neutering") String neutering
	        , @RequestParam("file") MultipartFile file
	        , @RequestParam("content") String content) {
		
		int count = adAbandonedDogBO.addDog(title, dogName, breed, age, gender, vaccination, neutering, file, content);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
			
		} else {
			result.put("result", "fail");
		}
		
		return result;
		
	}
	
	
	
	
	
	
	      
}
