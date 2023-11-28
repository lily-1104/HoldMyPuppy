package com.holdmypuppy.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.holdmypuppy.user.entity.UserEntity;
import com.holdmypuppy.user.repository.UserRepository;

@Service
public class UserBO {
	
	@Autowired
	private UserRepository userRepository;
	
	
	// 보호 중인 아이들 조회 (상세 정보) - 글쓴이 닉네임
	public UserEntity getUserEntityById(int userId) {
		
		return userRepository.findById(userId).orElse(null);
		
	}
	
	
	
	// 회원가입 API
	public Integer addUser(String loginId, String password, String name, String email, String nickname, String memberCode) {
		
		UserEntity userEntity = userRepository.save(
				UserEntity.builder()
				.loginId(loginId)
				.password(password)
				.name(name)
				.email(email)
				.nickname(nickname)
				.memberCode("M")
				.petPartner("N")
				.build());
		
		return userEntity == null ? null : userEntity.getId();
	}
	
	
	
	// 회원가입 - 아이디 중복 확인 API
	public UserEntity getUserEntityByLoginId(String loginId) {
		
		return userRepository.findByLoginId(loginId);
	}
	
	
	
	// 회원가입 - 닉네임 중복 확인 API
	public UserEntity getUserEntityByNickname(String nickname) {
		
		return userRepository.findByNickname(nickname);
	}
	
	
	
	// 로그인 API
	public UserEntity getUserEntityByLoginIdPassword(String loginId, String password) {
		
		return userRepository.findByLoginIdAndPassword(loginId, password);
	}
	
	
}
