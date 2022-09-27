package com.holdmypuppy.admin.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.holdmypuppy.admin.inform.abandonedDog.bo.AdAbandonedDogBO;
import com.holdmypuppy.admin.inform.abandonedDog.model.AdAbandonedDog;

@Controller
public class MainControllerAdmin {
	
	
	@Autowired
	private AdAbandonedDogBO adAbandonedDogBO;
	
	
	// 메인 페이지 연결
	@GetMapping("/main/admin")
	public String mainViewAdmin(Model model) {
		
		// 보호 중인 아이들 리스트
		List<AdAbandonedDog> adAbandonedDog = adAbandonedDogBO.getPuppiesList();
		model.addAttribute("puppiesList", adAbandonedDog);
		
		return "admin/main/mainA";
		
	}

}
