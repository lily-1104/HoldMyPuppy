package com.holdmypuppy.inform.abandonedDog;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.holdmypuppy.inform.abandonedDog.bo.AbandonedDogBO;
import com.holdmypuppy.inform.abandonedDog.domain.AbandonedDog;
import com.holdmypuppy.user.bo.UserBO;
import com.holdmypuppy.user.entity.UserEntity;

@RequestMapping("/abandoned_dog")
@Controller
public class AbandonedDogController {
	
	
	@Autowired
	private AbandonedDogBO abandonedDogBO;
	
	
	@Autowired
	private UserBO userBO;
	
	
	// 보호 중인 아이들 리스트
	// http://localhost:8080/abandoned_dog
	@GetMapping("")
	public String abandonedDogListView(Model model) {
		
		List<AbandonedDog> abandonedDog = abandonedDogBO.getDogsList();
		
		model.addAttribute("abandonedDogsList", abandonedDog);
		model.addAttribute("viewName", "inform/abandonedDog/abandonedDogList");
						
		return "template/layout";
		
	}
	
	
	
	// 보호 중인 아이들 등록
	// http://localhost:8080/abandoned_dog/create
	@GetMapping("/create")
	public String abandonedDogPostView(Model model) {
			
		model.addAttribute("viewName", "inform/abandonedDog/abandonedDogPost");
			
		return "template/layout";
			
	}
		
	
	
	// 보호 중인 아이들 조회 (상세 정보)
	// http://localhost:8080/abandoned_dog/dog_detail
	@GetMapping("/dog_detail")
	public String abandonedDogDetailView(@RequestParam("id") int id, Model model, String userNickname) {
		
		AbandonedDog dog = abandonedDogBO.getDogByPostId(id, userNickname);
//		UserEntity user = userBO.getUserEntityById(id);	  // 닉네임 불러오기
		UserEntity user = userBO.getUserEntityByNick(userNickname);
//		List<DogDetail> abandonedDogDetail = 
		
		model.addAttribute("abandonedDog", dog);
		model.addAttribute("user", user);	// 닉네임 불러오기
//		model.addAttribute("like", like)
		model.addAttribute("viewName", "inform/abandonedDog/abandonedDogDetail");
		
		return "template/layout";
		
	}
		

}
