package com.holdmypuppy.member.cs.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.holdmypuppy.member.cs.notice.bo.NoticeBO;
import com.holdmypuppy.member.cs.notice.model.Notice;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	
	@Autowired
	private NoticeBO noticeBO;
	
	
	// 공지사항 리스트
	@GetMapping("")
	public String notice(Model model) {
		
		List<Notice> noticeList = noticeBO.getNoticeList();
		
		model.addAttribute("noticeList", noticeList);
				
		return "/member/cs/notice/noticeList";
		
	}
	
	
	
	// 공지사항 조회
	@GetMapping("/detail")
	public String noticeDetail() {
		
		return "/member/cs/notice/noticeDetail";
	}

}
