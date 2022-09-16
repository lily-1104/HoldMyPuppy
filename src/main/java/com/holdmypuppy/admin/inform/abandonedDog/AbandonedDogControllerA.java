package com.holdmypuppy.admin.inform.abandonedDog;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/adoption")
public class AbandonedDogControllerA {
	
	
	// 보호 중인 아이들 리스트
	@GetMapping("")
	public String adminPuppies() {
		
		return "/admin/inform/abandonedDog/puppiesListA";
	}
	
	
	
	// 유기견 등록
	@GetMapping("/puppyPost")
	public String puppiesPost() {
		
		return "/admin/inform/abandonedDog/puppyPostA";
	}
	
	
	
	// 유기견 정보
	@GetMapping("/puppyDetail")
	public String puppyDetail() {
		
		return "/admin/inform/abandonedDog/puppyDetailA";
	}
	

}
