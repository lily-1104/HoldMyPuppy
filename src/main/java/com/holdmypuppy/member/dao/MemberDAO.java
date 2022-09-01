package com.holdmypuppy.member.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface MemberDAO {
	
	// 회원 가입
	public int insertMember(
			@Param("loginId") String loginId
			, @Param("password") String password
			, @Param("name") String name
			, @Param("phoneNumber") String phoneNumber
			, @Param("nickname") String nickname
			, @Param("memberCode") char memberCode);
	
	
	
	// 회원 가입 - 아이디 중복 확인
	public int selectCountLoginId(@Param("loginId") String loginId);
	
	
	
	// 회원 가입 - 닉네임 중복 확인
	public int selectCountLoginNickname(@Param("nickname") String nickname);
	
	
	
	
	
	
	
}
