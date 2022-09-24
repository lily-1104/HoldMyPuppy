package com.holdmypuppy.admin.cs.notice;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.holdmypuppy.admin.cs.notice.bo.AdNoticeBO;

@RestController
@RequestMapping("/notice/post")
public class NoticeRestControllerAdmin {
	
	@Autowired
	private AdNoticeBO noticeBO;
	
	
	// 공지사항 작성 (관리자)
	@PostMapping("")
	public Map<String, String> noticeCreate(
			@RequestParam("title") String title
			, @RequestParam(value="file", required=false) MultipartFile file
			, @RequestParam("content") String content) {
		
		int count = noticeBO.addNotice(title, file, content);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
		
	}
	
	
	
	// 공지사항 수정
	@PostMapping("/update")
	public Map<String, String> updateNotice(
			@RequestParam("noticeId") int noticeId
			, @RequestParam("title") String title
			, @RequestParam("content") String content
			, HttpServletRequest request) {
		
		int count = noticeBO.updateNotice(noticeId, title, content);
		
		Map<String, String> map = new HashMap<>();
		
		if(count == 1) {
			map.put("result", "success");
			
		} else {
			map.put("result", "fail");
		}
		
		return map;
		
	}
	
	
	
	// 공지사항 삭제
	@GetMapping("/delete")
	public Map<String, String> deleteNotice(@RequestParam("noticeId") int noticeId) {
		
		Map<String, String> map = new HashMap<>();
		
		int count = noticeBO.deleteNotice(noticeId);
		
		if(count == 1) {
			map.put("result", "success");
			
		} else {
			map.put("result", "fail");
		}
		
		return map;
		
	}
	
	
	
	
	
}
