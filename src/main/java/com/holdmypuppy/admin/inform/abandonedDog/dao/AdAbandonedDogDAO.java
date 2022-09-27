package com.holdmypuppy.admin.inform.abandonedDog.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.holdmypuppy.admin.inform.abandonedDog.model.AdAbandonedDog;

@Repository
public interface AdAbandonedDogDAO {
   
   
    // 유기견 등록 API
    public int postDog(
    		@Param("title") String title
    		, @Param("dogName") String dogName
    		, @Param("breed") String breed
    		, @Param("age") String age
    		, @Param("gender") String gender
    		, @Param("vaccination") String vaccination
    		, @Param("neutering") String neutering
         	, @Param("imagePath") String imagePath
         	, @Param("content") String content);
    
    
    
    // 보호 중인 아이들 리스트
    public List<AdAbandonedDog> selectPuppiesList();
    
    
    
    // 유기견 정보 (detail)
    public AdAbandonedDog selectPuppy(@Param("id") int id);

}

