package com.holdmypuppy.inform.abandonedDog;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.holdmypuppy.inform.abandonedDog.bo.AbandonedDogBO;
import com.holdmypuppy.inform.abandonedDog.domain.AbandonedDog;

@RequestMapping("/abandoned_dog")
@Controller
public class AbandonedDogController {
	
	
	@Autowired
	private AbandonedDogBO abandonedDogBO;
	
	
	// 보호 중인 아이들 등록
	// http://localhost:8080/abandoned_dog/create
	@GetMapping("/create")
	public String abandonedDogPostView(Model model) {
		
		model.addAttribute("viewName", "inform/abandonedDog/abandonedDogPost");
		
		return "template/layout";
		
	}
	
	
	
	// 보호 중인 아이들 리스트
	// http://localhost:8080/abandoned_dog
	@GetMapping("")
	public String abandonedDogListView(Model model) {
		
		List<AbandonedDog> abandonedDog = abandonedDogBO.getDogsList();
		model.addAttribute("viewName", "inform/abandonedDog/abandonedDogList");
						
		return "template/layout";
		
	}

}
