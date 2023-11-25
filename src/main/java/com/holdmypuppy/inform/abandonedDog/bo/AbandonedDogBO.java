package com.holdmypuppy.inform.abandonedDog.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.holdmypuppy.inform.abandonedDog.domain.AbandonedDog;
import com.holdmypuppy.inform.abandonedDog.mapper.AbandonedDogMapper;

@Service
public class AbandonedDogBO {
	
	
	@Autowired
	private AbandonedDogMapper abandonedDogMapper;
	
	
	// 보호 중인 아이들 리스트
	public List<AbandonedDog> getDogsList() {
		
		return abandonedDogMapper.selectDogsList();
	}

}
