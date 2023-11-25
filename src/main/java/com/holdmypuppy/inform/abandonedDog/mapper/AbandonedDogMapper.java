package com.holdmypuppy.inform.abandonedDog.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.holdmypuppy.inform.abandonedDog.domain.AbandonedDog;

@Repository
public interface AbandonedDogMapper {
	
	
	// 보호 중인 아이들 리스트
	public List<AbandonedDog> selectDogsList();

}
