package com.holdmypuppy.admin.inform.abandonedDog.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.holdmypuppy.admin.inform.abandonedDog.dao.AdAbandonedDogDAO;
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
         , int age
         , String gender
         , String vaccination
         , String neutering
         , MultipartFile file
         , String content) {
      
      String imagePath = FileManagerService.saveFile(0, file);
      
      return adAbandonedDogDAO.postDog(title, dogName, breed, age, gender/*확인*/, vaccination, neutering, imagePath, content);
            
   }

}

