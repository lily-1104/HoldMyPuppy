package com.holdmypuppy.admin.inrorm.puppies;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class PuppiesControllerAdmin {
	
	
	// 보호 중인 아이들 리스트
	@GetMapping("/adoption")
	public String adminPuppies() {
		
		return "/admin/inform/puppies";
	}
	
	
	
	// 반려견 등록
	@GetMapping("/puppies/post")
	public String puppiesPost() {
		
		return "/admin/inform/post";
	}
	
	
	
	// 반려견 정보
	@GetMapping("/puppy/detail")
	public String puppyDetail() {
		
		return "/admin/inform/puppyDetail";
	}

}
