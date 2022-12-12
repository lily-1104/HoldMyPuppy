package com.holdmypuppy.admin.inform.abandonedDog.like.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface AdLikeDAO {
	
	
	// 유기견 좋아요 
	public int insertLike(
			@Param("abandonedDogId") int abandonedDogId
			, @Param("memberId") int memberId);
	
	
	
	// 좋아요 취소
	public int deleteLike(
			@Param("abandonedDogId") int abandonedDogId
			, @Param("memberId") int memberId);

}
