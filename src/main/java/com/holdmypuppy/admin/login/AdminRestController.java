package com.holdmypuppy.admin.login;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.holdmypuppy.admin.login.bo.AdminBO;
import com.holdmypuppy.admin.login.model.Admin;


@RestController
public class AdminRestController {
	
	@Autowired
	private AdminBO adminBO;
	
	
	// 관리자 회원가입 API
	@PostMapping("/admin/signup")
	public Map<String, String> adminSignUp(
			@RequestParam("loginId") String loginId
			, @RequestParam("password") String password
			, @RequestParam("name") String name
			, @RequestParam("phoneNumber") String phoneNumber
			, @RequestParam("nickname") String nickname
			, @RequestParam("memberCode") char memberCode) {
		
		int count = adminBO.addAdmin(loginId, password, name, phoneNumber, nickname, memberCode);
		
		Map<String, String> map = new HashMap<>();
		
		if(count == 1) {
			map.put("result", "success");
			
		} else {
			map.put("result", "fail");
		}
		
		return map;
		
	}
	
	
	
	// 관리자 회원 가입 - 아이디 중복 확인
	@GetMapping("/admin/duplicate_id")
	public Map<String, Boolean> idIsDuplicate(String loginId) {
		
		Map<String, Boolean> result = new HashMap<>();
		
		if(adminBO.idIsDuplicate(loginId)) {	// 중복된 경우
			result.put("is_duplicate", true);
			
		} else {	// 중복되지 않은 경우
			result.put("is_duplicate", false);
		}
		
		return result;
		
	}
	
	
	
	// 관리자 회원 가입 - 닉네임 중복 확인
	@GetMapping("/admin/duplicate_nickname")
	public Map<String, Boolean> nicknameIsDuplicate(String nickname) {
		
		Map<String, Boolean> result = new HashMap<>();
		
		if(adminBO.nicknameIsDuplicate(nickname)) {
			result.put("is_duplicate", true);
			
		} else {
			result.put("is_duplicate", false);
		}
		
		return result;
		
	}
	
	
	
	// 로그인 API
	@PostMapping("/admin/signin")
	public Map<String, String> signIn(
			@RequestParam("loginId") String loginId
			, @RequestParam("password") String password
			/*, @RequestParam("memberCode") String memberCode*/
			, HttpServletRequest request) {
		
		Admin admin = adminBO.getAdmin(loginId, password/*, memberCode*/);
		
		Map<String, String> result = new HashMap<>();
		
		if(admin != null /*&& memberCode == "A"*/) {		// 로그인 성공
			result.put("result", "success");
			
			HttpSession session = request.getSession();
			
			session.setAttribute("adminId", admin.getId());
			session.setAttribute("adminLoginId", admin.getLoginId());
			/*session.setAttribute("adminNickname", admin.getNickname());*/
		
		} else {	// 로그인 실패
			result.put("result", "fail");
			
		}
		
		return result;
		
	}
	
}
