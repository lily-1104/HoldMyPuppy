package com.holdmypuppy.common;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.web.multipart.MultipartFile;

public class FileManagerService {
	
	// 이미지 파일 저장 
	
	
	// 멤버 변수로 밖으로 빼기
	public static final String FILE_UPLOAD_PATH = "C:\\Users\\User\\Desktop\\개발\\Spring\\Project\\image file\\HoldMyPuppy\\upload/";  
	
	// 파일을 저장하고 외부에서 접근 가능한 경로로 리턴하는 기능
	public static String saveFile(int memberId, MultipartFile file) {	
			
			
		String directoryName = memberId + "_" + System.currentTimeMillis() + "/";
			
			
		// 디렉토리 생성
		String filePath = FILE_UPLOAD_PATH + directoryName;
		File directory = new File(filePath);	// java.io.File 로 임포트
				
		if (directory.mkdir() == false) {
					
			// 디렉토리 생성 실패했을 경우
			return null;
		}
		
		
		// 파일 저장
		try {
			byte[] bytes = file.getBytes();
						
			Path path = Paths.get(filePath + file.getOriginalFilename());	// java.nio.file.Path 로 임포트 (인터페이스) 
			Files.write(path, bytes);
					
		} catch (IOException e) {
					
			e.printStackTrace();
					
			// 파일 처리 예외 상황
			return null;
		}
		
		
		// 외부에서 접근 가능한 경로 리턴 
		return "/images/" + directoryName + file.getOriginalFilename();
		
	}
	
	
	
	// 이미지 파일 삭제 
	public static boolean removeFile(String filePath) {	// /images/3_1241241/text.png
		
		if(filePath == null) {
			
			return false;
		}
		
		String realFilePath = FILE_UPLOAD_PATH + filePath.replace("/images/", "");
		
		Path path = Paths.get(realFilePath);
		
		// 파일이 있는지 확인 (파일이 있을 경우에만 삭제)
		if(Files.exists(path)) {
			
			try {
				Files.delete(path);
			} catch (IOException e) {
				
				e.printStackTrace();
				
				return false;
			}
			
		}
		
			// 파일 => C:\\Users\\User\\Desktop\\개발\\Spring\\Project\\image file\\HoldMyPuppy\\upload/3_48551451742/asdf.jpg
			// 폴더 지우려면 => C:\\Users\\User\\Desktop\\개발\\Spring\\Project\\image file\\HoldMyPuppy\\upload/3_48551451742
		
		path = path.getParent();
		
		// 디렉토리가 존재하는지 확인
		if(Files.exists(path)) {
			try {
				Files.delete(path);
			} catch (IOException e) {
				
				e.printStackTrace();
				return false;	// 문제가 됐으면 false로 return
			}
			
		}
		
		return true;	// 문제가 없으면 true로 return
		
	}
	
}
