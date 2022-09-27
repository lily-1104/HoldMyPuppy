package com.holdmypuppy.admin.inform.abandonedDog.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.holdmypuppy.admin.inform.abandonedDog.dao.AdAbandonedDogDAO;
import com.holdmypuppy.admin.inform.abandonedDog.model.AdAbandonedDog;
import com.holdmypuppy.common.FileManagerService;

@Service
public class AdAbandonedDogBO {
   
   
   @Autowired
   private AdAbandonedDogDAO adAbandonedDogDAO;
   
   
   // 유기견 등록 API
   public int addDog(
         String title
         , String dogName
         , String breed
         , String age
         , String gender
         , String vaccination
         , String neutering
         , MultipartFile file
         , String content) {
      
      String imagePath = FileManagerService.saveFile(0, file);
      
      return adAbandonedDogDAO.postDog(title, dogName, breed, age, gender, vaccination, neutering, imagePath, content);
            
   }
   
   
   
   // 보호 중인 아이들 리스트
   public List<AdAbandonedDog> getPuppiesList() {
	   
	   return adAbandonedDogDAO.selectPuppiesList();
   }
   
   
   
   // 유기견 정보 (detail)
   public AdAbandonedDog getPuppy(int id) {
	   
	   return adAbandonedDogDAO.selectPuppy(id);

   }
   

}
