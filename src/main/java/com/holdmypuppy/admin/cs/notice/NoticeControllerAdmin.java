package com.holdmypuppy.admin.cs.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.holdmypuppy.admin.cs.notice.bo.AdNoticeBO;
import com.holdmypuppy.admin.cs.notice.model.AdNotice;

@Controller
@RequestMapping("/admin/notice")
public class NoticeControllerAdmin {
	
	
	@Autowired
	private AdNoticeBO noticeBO;
	
	
	// 공지사항 리스트
	@GetMapping("")
	public String noticeList(Model model) {
		
		List<AdNotice> noticeList = noticeBO.getNoticeList();
		model.addAttribute("noticeList", noticeList);
		
		return "/admin/cs/notice/noticeListA";
	}
	
	
	
	// 공지사항 작성
	@GetMapping("/post")
	public String noticePost() {
		
		return "/admin/cs/notice/noticePostA";
	}
	
	
	
	// 공지사항 보기
	@GetMapping("/detail")
	public String noticeDetail(@RequestParam("id") int id, Model model) {
		
		AdNotice post = noticeBO.getNotice(id);	
		
		model.addAttribute("notice", post);
		
		return "/admin/cs/notice/noticeDetailA";
	}
	
	
	
	// 공지사항 수정
	@GetMapping("/modify")
	public String noticeModify(@RequestParam("id") int id, Model model) {
		
		AdNotice notice = noticeBO.getNotice(id);
		
		model.addAttribute("notice", notice);
		
		return "/admin/cs/notice/noticeModifyA";
	}
	
}
