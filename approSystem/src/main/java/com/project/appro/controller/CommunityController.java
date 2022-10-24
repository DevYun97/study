package com.project.appro.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.appro.dao.IcommunityDAO;
import com.project.appro.dao.IcommunityReplyDAO;
import com.project.appro.dao.InoticeDAO;
import com.project.appro.dto.Community;
import com.project.appro.dto.CommunityReply;
import com.project.appro.dto.Notice;
import com.project.appro.dto.Page;
import com.project.appro.service.CommunityService;

@Controller
@RequestMapping("community")
public class CommunityController {
	
	@Autowired
	IcommunityDAO comDao;
	
	@Autowired
	InoticeDAO noticeDao;
	
	@Autowired
	CommunityService comService;
	
	@Autowired
	IcommunityReplyDAO replyDao;
	
	@RequestMapping("communityList")
	public String communityList (@RequestParam Map<String, Object> map, Model model) {
		
		if(map.isEmpty()) {
			map.put("pageNo", 1);
			map.put("listSize", 10);
		}
		
		int count = comDao.comCount(map);
		int curPage = Integer.parseInt(map.get("pageNo").toString());
		
		Page page = new Page(count, curPage);
		
		ArrayList<Map<String, Object>> community = comDao.community(map);
		
		model.addAttribute("community", community);
		model.addAttribute("page", page);
		model.addAttribute("sch", map);

		
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
		
		int replyCount = replyDao.ReplyCount(commu_no);
		model.addAttribute("reCount", replyCount);
		
		return "community/communityDetail";
	}
	
	@RequestMapping("replyWriteAction")
	@ResponseBody
	public String replyWriteAction (String commu_no, String reply_id, String reply_name, String reply_content) {
		
		String result= comService.replyWrite(commu_no, reply_id, reply_name, reply_content);
		
		return result;
	}
	
	@RequestMapping("noticeList")
	public String noticeList (@RequestParam Map<String, Object> map, Model model) {
		
		if(map.isEmpty()) {
			map.put("pageNo", 1);
			map.put("listSize", 10);
		}
		
		int count = noticeDao.noticeCount(map);
		int curPage = Integer.parseInt(map.get("pageNo").toString());
		
		Page page = new Page(count, curPage);
		
		ArrayList<Map<String, Object>> notice = noticeDao.notice(map);
		
		model.addAttribute("notice", notice);
		model.addAttribute("page", page);
		model.addAttribute("sch", map);

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
		
		noticeDao.noticehit(notice_no);
		Notice notice = noticeDao.getNoticeDetail(notice_no);
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
