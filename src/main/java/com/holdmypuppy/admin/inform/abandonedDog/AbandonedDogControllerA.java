package com.holdmypuppy.admin.inform.abandonedDog;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.holdmypuppy.admin.inform.abandonedDog.bo.AdAbandonedDogBO;
import com.holdmypuppy.admin.inform.abandonedDog.model.AdAbandonedDog;

@Controller
@RequestMapping("/admin/adoption")
public class AbandonedDogControllerA {
	
	
	@Autowired
	private AdAbandonedDogBO adAbandonedDogBO;
	
	
	// 보호 중인 아이들 리스트
	@GetMapping("")
	public String adminPuppies(Model model) {
		
		List<AdAbandonedDog> adAbandonedDog = adAbandonedDogBO.getPuppiesList();
		model.addAttribute("puppiesList", adAbandonedDog);
		
		return "/admin/inform/abandonedDog/puppiesListA";
	}
	
	
	
	// 유기견 등록
	@GetMapping("/puppyPost")
	public String puppiesPost() {
		
		return "/admin/inform/abandonedDog/puppyPostA";
	}
	
	
	
	// 유기견 정보 (detail)
	@GetMapping("/puppyDetail")
	public String puppyDetail(@RequestParam("id") int id, Model model) {
		
		AdAbandonedDog puppy = adAbandonedDogBO.getPuppy(id);
		model.addAttribute("abandonedDog", puppy);
		
		return "/admin/inform/abandonedDog/puppyDetailA";
	}
	

}
