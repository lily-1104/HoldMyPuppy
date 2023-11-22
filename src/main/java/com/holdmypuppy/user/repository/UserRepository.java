package com.holdmypuppy.user.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.holdmypuppy.user.entity.UserEntity;

@Repository
public interface UserRepository extends JpaRepository<UserEntity, Integer> {

	
	// 회원가입 - 아이디 중복 확인 API
	public UserEntity findByLoginId(String loginId);
	
	
	// 회원가입 - 닉네임 중복 확인 API
	public UserEntity findByNickname(String nickname);
	
	
	// 로그인 API
	public UserEntity findByLoginIdAndPassword(String loginId, String password);
	
	
}
