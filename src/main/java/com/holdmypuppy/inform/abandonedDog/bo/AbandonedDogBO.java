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
import com.holdmypuppy.user.bo.UserBO;
import com.holdmypuppy.user.entity.UserEntity;

@Service
public class AbandonedDogBO {
	
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	
	@Autowired
	private AbandonedDogMapper abandonedDogMapper;
	
	@Autowired
	private FileManagerService fileManager;
	
	@Autowired
	private UserBO userBO;
	
	
	
	// 보호 중인 아이들 리스트
	public List<AbandonedDog> getDogsList() {
		
		return abandonedDogMapper.selectDogsList();
	}
	
	
	
	// 유기견 등록 API
	public int addDog(
			int userId, String userLoginId, String title, String dogName, String breed, int age,
			String gender, String neutralization, String mbti, String content, MultipartFile file) {
		
		String imagePath = null;
		
		if (file != null) {
			
			imagePath = fileManager.saveFile(userLoginId, file);
		}
		
		AbandonedDog abandonedDog = new AbandonedDog();
		abandonedDog.setUserId(userId);
		abandonedDog.setTitle(title);
		abandonedDog.setDogName(dogName);
		abandonedDog.setBreed(breed);
		abandonedDog.setAge(age);
		abandonedDog.setGender(gender);
		abandonedDog.setNeutralization(neutralization);
		abandonedDog.setMbti(mbti);
		abandonedDog.setImagePath(imagePath);
		abandonedDog.setContent(content);
		
		abandonedDogMapper.postDog(abandonedDog);
		
		return abandonedDog.getId();
		
	}
	
	
	
	// 보호 중인 아이들 조회 (상세 정보)
	public AbandonedDog getDogByPostId(int id) {
		
		// 글쓴이 닉네임
		UserEntity user = userBO.getUserEntityById(id);
		
		return abandonedDogMapper.selectDogByPostId(id);
		
	}
	
	
}
