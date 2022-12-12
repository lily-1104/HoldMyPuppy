package com.holdmypuppy.admin.inform.abandonedDog.like.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.holdmypuppy.admin.inform.abandonedDog.like.dao.AdLikeDAO;

@Service
public class AdLikeBO {
	
	
	@Autowired
	private AdLikeDAO adLikeDAO;
	
	
	// 유기견 좋아요 
	public int addLike(int abandonedDogId, int memberId) {
		
		return adLikeDAO.insertLike(abandonedDogId, memberId);
		
	}
	
	
	
	// 좋아요 취소
	public int unlike(int abandonedDogId, int memberId) {
		
		return adLikeDAO.deleteLike(abandonedDogId, memberId);
	}


}
