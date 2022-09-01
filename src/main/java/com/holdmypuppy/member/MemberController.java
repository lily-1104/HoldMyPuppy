package com.holdmypuppy.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MemberController {
	
	// 로그인 페이지 연결
	@GetMapping("/member/signin")
	public String signinView() {
		return "/member/signin";
	}
	
	
	// 회원가입 페이지 연결
	@GetMapping("/member/signup")
	public String signupView() {
		return "/member/signup";
	}
	
}
