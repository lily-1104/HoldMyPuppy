package com.holdmypuppy.inform.abandonedDog.bo;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.holdmypuppy.common.FileManagerService;
import com.holdmypuppy.inform.abandonedDog.domain.AbandonedDog;
import com.holdmypuppy.inform.abandonedDog.mapper.AbandonedDogMapper;

@Service
public class AbandonedDogBO {
	
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	
	@Autowired
	private AbandonedDogMapper abandonedDogMapper;
	
	@Autowired
	private FileManagerService fileManager;
	
	
	// 보호 중인 아이들 리스트
	public List<AbandonedDog> getDogsList() {
		
		return abandonedDogMapper.selectDogsList();
	}
	
	
	
	// 유기견 등록 API
	public void addDog(
			int userId, String userLoginId, String title, String dogName, String breed, int age,
			 String gender, String neutralization, String mbti, String content, MultipartFile file) {
		
		String imagePath = null;
		
		if (file != null) {
			
			imagePath = fileManager.saveFile(userLoginId, file);
		}
		
		abandonedDogMapper.postDog(userId, userLoginId, title, dogName, breed, age, gender, neutralization, mbti, content, imagePath);
		
	}
	
	
	
	
	
	

}
