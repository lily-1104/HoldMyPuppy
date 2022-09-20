package com.holdmypuppy.member.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/member")
@Controller
public class MemberController {
	
	// 로그인 페이지 연결
	@GetMapping("/signin")
	public String signinView() {
		return "/member/login/signin";
	}
	
	
	// 회원가입 페이지 연결
	@GetMapping("/signup")
	public String signupView() {
		return "/member/login/signup";
	}
	
	
	
	// 아이디 찾기 페이지 연결
	@GetMapping("/find_id")
	public String findIdView() {
	    return "/member/login/findId";
	}
	
	
	
	// 비밀번호 찾기 페이지 연결
	@GetMapping("/find_pw")
	public String findPwView() {
	    return "/member/login/findPw";
	}
	
	
	
	// 로그아웃
	@GetMapping("/signout")
	public String singOut(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		session.removeAttribute("memberId");
		session.removeAttribute("memberLoginId");
		session.removeAttribute("memberCode");
		session.removeAttribute("memberNickname");
		
		return "redirect:/member/signin";
		
	}
	
}
