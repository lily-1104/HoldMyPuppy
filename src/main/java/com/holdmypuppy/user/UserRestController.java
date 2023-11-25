package com.holdmypuppy.user;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.holdmypuppy.common.EncryptUtils;
import com.holdmypuppy.user.bo.UserBO;
import com.holdmypuppy.user.entity.UserEntity;

@RequestMapping("/user")
@RestController
public class UserRestController {
	
	
	@Autowired
	private UserBO userBO;

	
	// 회원가입 API
	@PostMapping("/sign_up")
	public Map<String, Object> signUp(
			@RequestParam("loginId") String loginId,
			@RequestParam("password") String password,
			@RequestParam("name") String name,
			@RequestParam("email") String email,
			@RequestParam("nickname") String nickname,
			@RequestParam("memberCode") char memberCode) {
		
		// password 해싱
		String hashedPassword = EncryptUtils.md5(password);
		
		// DB insert
		Integer id = userBO.addUser(loginId, hashedPassword, name, email, nickname, memberCode);
		
		// 응답값
		Map<String, Object> result = new HashMap<>();
		
		if (id == null) {
			
			result.put("code", 500);
			result.put("errorMessage", "회원가입 하는데 실패했습니다");
			
		} else {
			
			result.put("code", 200);
			result.put("result", "성공");
		}
		
		return result;
		
	}
	
	
	
	// 회원가입 - 아이디 중복 확인 API
	// 코드 맞는데 에러나면 application.yml에서 카멜케이스 설정 되어있는지 확인하기
	@RequestMapping("/is_duplicated_id")
	public Map<String, Object> isDuplicatedId(
			@RequestParam("loginId") String loginId) {
		
		// db 조회
		UserEntity user = userBO.getUserEntityByLoginId(loginId);
		
		Map<String, Object> result = new HashMap<>();
		result.put("code", 200);
		
		if (user == null) {
			
			// 중복 아님
			result.put("isDuplicatedId", false);
			
		} else {
			
			// 중복
			result.put("isDuplicatedId", true);
		}
		
		return result;
		
	}
	
	
	
	// 회원가입 - 닉네임 중복 확인 API
	@RequestMapping("/is_duplicated_nickname")
	public Map<String, Object> isDuplicatedNick(
			@RequestParam("nickname") String nickname) {
		
		// db 조회
		UserEntity user = userBO.getUserEntityByNickname(nickname);
				
		Map<String, Object> result = new HashMap<>();
		result.put("code", 200);
		
		if (user == null) {
			
			result.put("isDuplicatedNickname", false);
			
		} else {
			
			result.put("isDuplicatedNickname", true);
		}
		
		return result;
		
	}
	
	
	
	// 로그인 API
	@PostMapping("/sign_in")
	public Map<String, Object> signIn(
			@RequestParam("loginId") String loginId,
			@RequestParam("password") String password,
			HttpServletRequest request) {
		
		// 비밀번호 hashing
		String hashedPassword = EncryptUtils.md5(password);
		
		// db 조회
		UserEntity user = userBO.getUserEntityByLoginIdPassword(loginId, hashedPassword);
		
		// 응답값
		Map<String, Object> result = new HashMap<>();
		
		if (user != null) {
			
			// 로그인 처리
			HttpSession session = request.getSession();
			session.setAttribute("userId", user.getId());
			session.setAttribute("userLoginId", user.getLoginId());
			session.setAttribute("userName", user.getName());
			
			result.put("code", 200);
			result.put("result", "성공");
			
		} else {
			
			// 로그인 불가
			result.put("code", 500);
			result.put("errorMessage", "성공");
			
		} 
			
		return result;
		
	}
	
	
}
