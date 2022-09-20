package com.holdmypuppy.member.login;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.holdmypuppy.member.login.bo.MemberBO;
import com.holdmypuppy.member.login.model.Member;

@RestController
public class MemberRestController {
	
	@Autowired
	private MemberBO memberBO;
	
	
	// 회원가입 API
	@PostMapping("/member/signup")
	public Map<String, String> signUp(
			@RequestParam("loginId") String loginId
			, @RequestParam("password") String password
			, @RequestParam("name") String name
			, @RequestParam("phoneNumber") String phoneNumber
			, @RequestParam("nickname") String nickname
			, @RequestParam("memberCode") char memberCode) {
		
		int count = memberBO.addMember(loginId, password, name, phoneNumber, nickname, memberCode);  
		
		Map<String, String> map = new HashMap<>();
		
		if(count == 1) {
			map.put("result", "success");
			
		} else {
			map.put("result", "fail");
		}
		
		return map;
		
	}
	
	
	
	// 회원 가입 - 아이디 중복 확인 API
	@GetMapping("/member/duplicate_id")
	public Map<String, Boolean> idIsDuplicate(String loginId) {
		
		Map<String, Boolean> result = new HashMap<>();
		
		if(memberBO.idIsDuplicate(loginId)) {	// 중복된 경우
			result.put("is_duplicate", true);
			
		} else {	// 중복되지 않은 경우
			result.put("is_duplicate", false);
		}
		
		return result;
		
	}
	
	
	
	// 회원 가입 - 닉네임 중복 확인 API
	@GetMapping("/member/duplicate_nickname")
	public Map<String, Boolean> nicknameIsDuplicate(String nickname) {
		
		Map<String, Boolean> result = new HashMap<>();
		
		if(memberBO.nicknameIsDuplicate(nickname)) {	// 중복된 경우
			result.put("is_duplicate", true);
			
		} else {	// 중복되지 않은 경우
			result.put("is_duplicate", false);
		}
		
		return result;
		
	}
	
	
	
	// 로그인 API
	@PostMapping("/member/signin")
	public Map<String, String> signIn(
			@RequestParam("loginId") String loginId
			, @RequestParam("password") String password
			, HttpServletRequest request) {
		
		Member member = memberBO.GetMember(loginId, password);
		
		Map<String, String> result = new HashMap<>();
		
		if(member != null) {	 // 로그인 성공
			result.put("result", "success");
			
			HttpSession session = request.getSession();
			
			session.setAttribute("memberId", member.getId());
			session.setAttribute("memberLoginId", member.getLoginId());
			session.setAttribute("memberNickname", member.getNickname());
			session.setAttribute("memberCode", member.getMemberCode());
			
		} else {	// 로그인 실패
			result.put("result", "fail");
			
		}
		
		return result;
		
	}
	
	
}
