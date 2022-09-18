package com.holdmypuppy.admin.cs.notice;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.holdmypuppy.admin.cs.notice.bo.AdNoticeBO;

@RestController
public class NoticeRestControllerAdmin {
	
	@Autowired
	private AdNoticeBO noticeBO;
	
	
	// 공지사항 작성 (관리자)
	@PostMapping("/notice/post")
	public Map<String, String> noticeCreate(
			@RequestParam("memberId") int memberId
			, @RequestParam("title") String title
			, @RequestParam(value="file", required=false) MultipartFile file
			, @RequestParam("content") String content
			/*, HttpServletRequest request*/) {
		
//		HttpSession session = request.getSession();
		
//		int memberId = (Integer) session.getAttribute("memberId");
		
		int count = noticeBO.addNotice(memberId, title, file, content);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
		
	}

}
