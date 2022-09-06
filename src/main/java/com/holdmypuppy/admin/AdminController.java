package com.holdmypuppy.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	
	// 관리자 회원가입 페이지 연결
	@GetMapping("/signup")
	public String adminSignup() {
		return "/admin/signup_admin";
	}
	
	
	
	// 관리자 로그인 페이지 연결
	@GetMapping("/signin")
	public String adminSignin() {
		return "/admin/signin_admin";
	}
	
}
