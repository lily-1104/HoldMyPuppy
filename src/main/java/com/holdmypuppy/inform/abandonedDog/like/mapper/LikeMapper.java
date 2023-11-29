package com.holdmypuppy.inform.abandonedDog.like.mapper;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface LikeMapper {
	
	
	// 좋아요
	public void insertLike(
			@Param("abandonedDogId") int abandonedDogId,
			@Param("userId") int userId);
	
	
	
	
	
	
}
