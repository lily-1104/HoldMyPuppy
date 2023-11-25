package com.holdmypuppy.user;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/user")
@Controller
public class UserController {
	
	
	// 로그인 페이지 연결
	// http://localhost:8080/user/signin
	@GetMapping("/signin")
	public String signinView(Model model) {
				
		model.addAttribute("viewName", "user/signin");
				
		return "template/layout";
				
	}
	
	
	
	// 회원가입 페이지 연결
	// http://localhost:8080/user/signup
	@GetMapping("/signup")
	public String signupView(Model model) {
			
		model.addAttribute("viewName", "user/signup");
			
		return "template/layout";
			
	}
	
	
	
	// 로그아웃
	@RequestMapping("/signout")
	public String signOut(HttpSession session) {
		
		session.removeAttribute("userId");
		session.removeAttribute("userNickname");
		session.removeAttribute("userLoginId");
		
		// 로그인 화면으로 이동
		return "redirect:/user/signin";
		
	}
	
	
	
	
	
	
	
	

}
