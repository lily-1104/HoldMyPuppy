package com.holdmypuppy.inform.abandonedDog.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.holdmypuppy.inform.abandonedDog.domain.AbandonedDog;

@Repository
public interface AbandonedDogMapper {
	
	
	// 보호 중인 아이들 리스트
	public List<AbandonedDog> selectDogsList();
	
	
	
	// 유기견 등록 API
	public void postDog(
//			@Param("userId") int userId,
//			@Param("userLoginId") String userLoginId,
//			@Param("title") String title,
//			@Param("dogName") String dogName,
//			@Param("breed") String breed,
//			@Param("age") String age,
//			@Param("gender") String gender,
//			@Param("neutralization") String neutralization,
//			@Param("mbti") String mbti,
//			@Param("content") String content,
//			@Param("imagePath") String imagePath
			AbandonedDog abandonedDog
		);
	
	
	
	// 보호 중인 아이들 조회 (상세 정보)
	public AbandonedDog selectDogByPostId(@Param("id") int id);
	
	
}
