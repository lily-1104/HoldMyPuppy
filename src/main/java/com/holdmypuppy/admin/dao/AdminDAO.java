package com.holdmypuppy.admin.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.holdmypuppy.admin.model.Admin;

@Repository
public interface AdminDAO {
	
	
	// 관리자 회원가입 API
	public int insertAdmin(
			@Param("loginId") String loginId
			, @Param("password") String password
			, @Param("name") String name
			, @Param("phoneNumber") String phoneNumber
			, @Param("nickname") String nickname
			, @Param("memberCode") char memberCode);
	
	
	
	// 관리자 회원 가입 - 아이디 중복 확인 
	public int selectCountLoginId(@Param("loginId") String loginId);
	
	
	
	// 관리자 회원 가입 - 닉네임 중복 확인
	public int selectCountLoginNickname(@Param("nickname") String nickname);
	
	
	
	// 로그인 API
	public Admin selectAdmin(
			@Param("loginId") String loginId
			, @Param("password") String password);

}
