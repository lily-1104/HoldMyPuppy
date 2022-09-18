package com.holdmypuppy.admin.login.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.holdmypuppy.admin.login.dao.AdminDAO;
import com.holdmypuppy.admin.login.model.Admin;
import com.holdmypuppy.common.EncryptUtils;

@Service
public class AdminBO {
	
	@Autowired
	private AdminDAO adminDAO;
	
	
	// 관리자 회원가입 API
	public int addAdmin(
			String loginId
			, String password
			, String name
			, String phoneNumber
			, String nickname
			, char memberCode) {
		
		String encryptPassword = EncryptUtils.md5(password);
		
		return adminDAO.insertAdmin(loginId, encryptPassword, name, phoneNumber, nickname, 'A');
		
		
	}
	
	
	
	// 관리자 회원 가입 - 아이디 중복 확인 
	public boolean idIsDuplicate(String loginId) {
		
		int count = adminDAO.selectCountLoginId(loginId);
		
		if(count == 0) {
			return false;
			
		} else {
			return true;
		}
		
	}
	
	
	
	// 관리자 회원 가입 - 닉네임 중복 확인
	public boolean nicknameIsDuplicate(String nickname) {
		
		int count = adminDAO.selectCountLoginNickname(nickname);
		
		if(count == 0) {
			return false;
			
		} else {
			return true;
		}
		
	}
	
	
	
	// 로그인 API
	public Admin getAdmin(String loginId, String password/*, String memberCode*/) {
		
		String encryptPassword = EncryptUtils.md5(password);
		
		return adminDAO.selectAdmin(loginId, encryptPassword/*, memberCode*/);
	}
	

}
