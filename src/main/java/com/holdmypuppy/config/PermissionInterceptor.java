package com.holdmypuppy.config;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

@Component
public class PermissionInterceptor implements HandlerInterceptor {
	
	
	// 1:1 문의 내역 (회원)
	// 요청이 들어올 때 
	@Override
	public boolean preHandle(
			HttpServletRequest request
			, HttpServletResponse response
			, Object handler) throws IOException {
			
		HttpSession session = request.getSession();
		Integer memberId = (Integer) session.getAttribute("memberId");
		
		String url = request.getRequestURI();
			
		
		// 로그인이 되어 있을 경우  => 로그인, 회원가입 페이지 이동 못하도록
		if (memberId != null) {
				
			if (url.startsWith("/member")) {
				response.sendRedirect("");
				// response.sendRedirect("/post/list/view");
				return false;
			}
			
		} else {	// 로그인이 되어있지 않을 경우  
				
			if(url.startsWith("/qna")) {
				response.sendRedirect("/member/signin");
				return false;
			}
		}
		
		return true;
	}
	
	
	
	// 관리자 페이지 (main 페이지 제외 전부 로그인 필요)
	public boolean preHandleAdmin(
			HttpServletRequest request
			, HttpServletResponse response
			, Object handler) throws IOException {
			
		HttpSession session = request.getSession();
		Integer memberId = (Integer) session.getAttribute("memberId");
		String memberCode = (String) session.getAttribute("memberCode");
		
		String url = request.getRequestURI();
			
		
		// 로그인이 되어 있을 경우  => 로그인, 회원가입 페이지 이동 못하도록
		if (memberId != null ) {
			
			// 이게 맞는지..?
			if (url.startsWith("/main")) {
				response.sendRedirect("/main/admin");
				return false;
			}
			
		} else if (memberCode != "A") {		// 로그인이 되어있지 않거나 멤버 코드가 A가 아닐 경우    
				
			if(url.startsWith("/admin")) {
				response.sendRedirect("/admin/signin");
				return false;
			}
			
		}
						
		return true;
	}
	
	
		
	// 응답 값이 만들어지기 전
	@Override
	public void postHandle(
			HttpServletRequest request
			, HttpServletResponse response
			, Object handler
			, ModelAndView modelAndView) {
	}
			
		
			
	// 응답 값이 완성된 이후
	@Override
	public void afterCompletion(
			HttpServletRequest request
			, HttpServletResponse response
			, Object handler
			, Exception ex) {
	}
			

}
