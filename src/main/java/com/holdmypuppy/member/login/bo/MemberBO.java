package com.holdmypuppy.member.login.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.holdmypuppy.common.EncryptUtils;
import com.holdmypuppy.member.login.dao.MemberDAO;
import com.holdmypuppy.member.login.model.Member;

@Service
public class MemberBO {
	
	@Autowired
	private MemberDAO memberDAO;
	
	
	// 회원 가입
	public int addMember(
			String loginId
			, String password
			, String name
			, String phoneNumber
			, String nickname
			, char memberCode) {
		
		String encryptPassword = EncryptUtils.md5(password);
		
		return memberDAO.insertMember(loginId, encryptPassword, name, phoneNumber, nickname, 'M');  
		
	}
	
	
	
	// 회원 가입 - 아이디 중복 확인
	public boolean idIsDuplicate(String loginId) {
		
		int count = memberDAO.selectCountLoginId(loginId);
		
		if(count == 0) {
			return false;
			
		} else {
			return true;
		}
		
	}
	
	
	
	// 회원 가입 - 닉네임 중복 확인
	public boolean nicknameIsDuplicate(String nickname) {
		
		int count = memberDAO.selectCountLoginNickname(nickname);
		
		if(count == 0) {
			return false;
			
		} else {
			return true;
		}
		
	}
	
	
	
	// 로그인 API
	public Member GetMember(String loginId, String password) {
		
		String encryptPassword = EncryptUtils.md5(password);
		
		return memberDAO.selectMember(loginId, encryptPassword);
	}
	
	
	
	// id로 사용자 정보 조회 (입양 후기 댓글)
	public Member getMemberById(int id) {
		
		return memberDAO.selectMemberById(id);
	}
	
	
}
