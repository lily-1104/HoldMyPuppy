package com.holdmypuppy.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/member")
@Controller
public class MemberController {
	
	// 로그인 페이지 연결
	@GetMapping("/signin")
	public String signinView() {
		return "/member/signin";
	}
	
	
	// 회원가입 페이지 연결
	@GetMapping("/signup")
	public String signupView() {
		return "/member/signup";
	}
	
	
	
	// 아이디 찾기 페이지 연결
	@GetMapping("/find_id")
	public String findIdView() {
	    return "/member/findId";
	}
	
	
	
	// 비밀번호 찾기 페이지 연결
	@GetMapping("/find_pw")
	public String findPwView() {
	    return "/member/findPw";
	}
	
	
	
}
