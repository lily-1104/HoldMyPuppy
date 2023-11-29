package com.holdmypuppy.inform.abandonedDog.like.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.holdmypuppy.inform.abandonedDog.like.mapper.LikeMapper;

@Service
public class LikeBO {
	
	
	@Autowired
	private LikeMapper likeMapper;
	
	
	// 좋아요
	public void likeToggle(int abandonedDogId, int userId) {
		
		likeMapper.insertLike(abandonedDogId, userId);
		
	}

}
