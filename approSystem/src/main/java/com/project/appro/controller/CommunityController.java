package com.project.appro.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.appro.dao.IcommunityDAO;
import com.project.appro.dto.Notice;
import com.project.appro.service.CommunityService;

@Controller
@RequestMapping("community")
public class CommunityController {
	
	@Autowired
	IcommunityDAO comDao;
	
	@Autowired
	CommunityService comService;
	
	@RequestMapping("communityList")
	public String communityList () {
		return "community/communityList";
	}
	
	@RequestMapping("communityWrite")
	public String communityWrite () {
		return "community/communityWrite";
	}
	
	@RequestMapping("communityDetail")
	public String communityDetail () {
		return "community/communityDetail";
	}
	
	@RequestMapping("noticeList")
	public String noticeList (Model model) {
		
		ArrayList<Notice> notice = comDao.notice();
		model.addAttribute("notice", notice);
		
		return "community/noticeList";
	}
	
	@RequestMapping("noticeWrite")
	public String noticeWrite () {
		return "community/noticeWrite";
	}
	
	@RequestMapping("noticeWriteAction")
	@ResponseBody
	public String noticeWriteAction (
			@RequestParam("notice_id") String notice_id,
			@RequestParam("notice_title") String notice_title,
			@RequestParam("notice_name") String notice_name,
			@RequestParam("notice_content") String notice_content		
			) {
		
		String result = comService.noticeWrite(notice_id, notice_title, notice_name, notice_content);
		
		return result;
	}
	
	@RequestMapping("noticeDetail")
	public String noticeDetail (@RequestParam("notice_no") String notice_no, Model model) {
		
		comDao.noticehit(notice_no);
		Notice notice = comDao.getNoticeDetail(notice_no);
		model.addAttribute("notice",notice);
				
		return "community/noticeDetail";
	}
	
	@RequestMapping("noticeDeleteAction")
	@ResponseBody
	public String noticeDeleteAction (@RequestParam("notice_no") String notice_no) {
		
		String result = comService.noticeDelete(notice_no);
		
		return result;
	}

}
