package com.holdmypuppy.admin.cs.notice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/notice")
public class NoticeControllerAdmin {
	
	
	// 공지사항
	@GetMapping("")
	public String noticeList() {
		
		return "/admin/cs/notice/noticeListA";
	}
	
	
	
	// 공지사항 작성
	@GetMapping("/post")
	public String noticePost() {
		
		return "/admin/cs/notice/noticePostA";
	}
	
	
	
	// 공지사항 보기
	@GetMapping("/detail")
	public String noticeDetail() {
		
		return "/admin/cs/notice/noticeDetailA";
	}

}
