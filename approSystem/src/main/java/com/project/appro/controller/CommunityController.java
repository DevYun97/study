package com.project.appro.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.appro.dao.IcommunityDAO;
import com.project.appro.dao.IcommunityReplyDAO;
import com.project.appro.dto.Community;
import com.project.appro.dto.CommunityReply;
import com.project.appro.dto.Notice;
import com.project.appro.service.CommunityService;

@Controller
@RequestMapping("community")
public class CommunityController {
	
	@Autowired
	IcommunityDAO comDao;
	
	@Autowired
	CommunityService comService;
	
	@Autowired
	IcommunityReplyDAO replyDao;
	
	@RequestMapping("communityList")
	public String communityList (Model model) {
		
		ArrayList<Community> community = comDao.community();
		model.addAttribute("community", community);
		
		return "community/communityList";
	}
	
	@RequestMapping("communityWrite")
	public String communityWrite () {
		return "community/communityWrite";
	}
	
	@RequestMapping("communityWriteAction")
	@ResponseBody
	public String communityWriteAction (String commu_id, String commu_title, String commu_name, String commu_content) {
		
		String result=comService.comWrite(commu_id, commu_title, commu_name, commu_content);
		
		return result;
	}
	
	@RequestMapping("communityDetail")
	public String communityDetail (@RequestParam("commu_no") String commu_no, Model model) {
		
		comDao.communityHit(commu_no);
		Community community = comDao.comDetail(commu_no);
		model.addAttribute("community", community);
		
		List<CommunityReply> reply = replyDao.replyList(commu_no);
		model.addAttribute("reply", reply);
		
//		int replyCount = replyDao.ReplyCount(commu_no);
//		model.addAttribute("reCount", replyCount);
//		
		
		return "community/communityDetail";
	}
	
	@RequestMapping("replyWriteAction")
	@ResponseBody
	public String replyWriteAction (String commu_no, String reply_id, String reply_name, String reply_content) {
		
		String result= comService.replyWrite(commu_no, reply_id, reply_name, reply_content);
		
		return result;
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
