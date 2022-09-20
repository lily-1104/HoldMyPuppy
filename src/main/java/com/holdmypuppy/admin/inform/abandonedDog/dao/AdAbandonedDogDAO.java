package com.holdmypuppy.admin.inform.abandonedDog.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface AdAbandonedDogDAO {
   
   
    // 유기견 등록 API
    public int postDog(
    		@Param("title") String title
    		, @Param("dogName") String dogName
    		, @Param("breed") String breed
    		, @Param("age") int age
    		, @Param("gender") String gender
    		, @Param("vaccination") String vaccination
    		, @Param("neutering") String neutering
         	, @Param("imagePath") String imagePath
         	, @Param("content") String content);

}

