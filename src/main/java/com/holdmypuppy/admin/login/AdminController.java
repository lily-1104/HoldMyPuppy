package com.holdmypuppy.admin.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	
	// 관리자 회원가입 페이지 연결
	@GetMapping("/signup")
	public String adminSignup() {
		return "/admin/login/signupA";
	}
	
	
	
	// 관리자 로그인 페이지 연결
	@GetMapping("/signin")
	public String adminSignin() {
		return "/admin/login/signinA";
	}
	
	
	
	// 로그아웃
	@GetMapping("/signout")
	public String signOut(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		session.removeAttribute("adminId");
		session.removeAttribute("admminLoginId");
		
		return "redirect:/admin/signin";
		
	}
	
}
