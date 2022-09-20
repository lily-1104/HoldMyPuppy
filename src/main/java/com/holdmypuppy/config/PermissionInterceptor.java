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
	
	
	// 요청이 들어올 때 
		// 1:1 문의 내역 접근시 로그인 (회원)
		// 관리자 페이지 (main 페이지 제외 전부 로그인 필요)
	@Override
	public boolean preHandle(
			HttpServletRequest request
			, HttpServletResponse response
			, Object handler) throws IOException {
			
		HttpSession session = request.getSession();
		Integer memberId = (Integer) session.getAttribute("memberId");
		String memberCode = (String) session.getAttribute("memberCode");
		
		String url = request.getRequestURI();
			
		
		// 로그인이 되어 있지 않을 경우
		if (memberId == null) {
				
			// 1:1 문의 들어가면 로그인 페이지 이동
			if(url.startsWith("/qna")) {
				response.sendRedirect("/member/signin");
				return false;
			}
			// 로그인 되어 있을 경우
		} else if(memberId != null) {
			
			// 멤버 코드가 A가 아닐 경우
			if(memberCode != "A") {
				
				// 관리자 페이지 사이트 접속시 관리자 로그인 필요
				if(url.startsWith("/admin")) {
					response.sendRedirect("/admin/signin");
					return false;
				}
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
