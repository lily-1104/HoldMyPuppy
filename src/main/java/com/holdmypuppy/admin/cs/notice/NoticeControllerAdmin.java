package com.holdmypuppy.admin.cs.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.holdmypuppy.admin.cs.notice.bo.AdNoticeBO;
import com.holdmypuppy.admin.cs.notice.model.AdNotice;
import com.holdmypuppy.admin.login.bo.AdminBO;

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
	public String noticeDetail() {
		
		return "/admin/cs/notice/noticeDetailA";
	}

}
