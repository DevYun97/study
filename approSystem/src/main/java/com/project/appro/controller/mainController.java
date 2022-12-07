package com.project.appro.controller;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.appro.dao.IcommunityDAO;
import com.project.appro.dao.ImemberDAO;
import com.project.appro.dao.InoticeDAO;
import com.project.appro.dto.MemberDTO;
import com.project.appro.service.MemberService;

@Controller
@RequestMapping
public class mainController {

	@Autowired
	ImemberDAO memberDao;
	
	@Autowired
	MemberService memService;
	
	@Autowired
	IcommunityDAO comDao;
	
	@Autowired
	InoticeDAO noticeDao;
	
	@RequestMapping("")
	public String root () {
		return "redirect:main";
	}
	
	@RequestMapping("main")
	public String index ( 
			@RequestParam Map<String, Object> map, 
			HttpSession session, Model model) {
		
		String member_id;
		try {
			member_id = (String) session.getAttribute("id");			
		} catch (NullPointerException e) {
			member_id = null;
		}
		
		if( member_id == null ) {
			return "redirect:login";
		}
			
		if(map.isEmpty()) {
			map.put("pageNo", 1);
			map.put("listSize", 3);
		}
		
		//MyCard
		MemberDTO member = memberDao.getMemberInpor(member_id);
		model.addAttribute("mem", member);
				
		//Notice
		ArrayList<Map<String, Object>> notice = noticeDao.notice(map);
		model.addAttribute("notice", notice);
		
		//Community
		ArrayList<Map<String, Object>> community = comDao.community(map);
		model.addAttribute("community", community);
				
		return "main";
	}
	
	@RequestMapping("login")
	public String login (HttpSession session) {
		
		String member_id;
		
		try {
			member_id = (String) session.getAttribute("id");			
		} catch (NullPointerException e) {
			member_id = null;
		}
		
		if( member_id == null ) {
			return "login";
		} else {
			return "redirect:main";
		}
	}
	
	@RequestMapping("loginAciton")
	@ResponseBody
	public String login (
			@RequestParam("member_id") String member_id,
			@RequestParam("member_pw") String member_pw,
			HttpSession session) {
		
		String result = memService.login(member_id, member_pw, session);				
		return result;
	}
	
	@RequestMapping("logoutAciton")
	@ResponseBody
	public String logoutAciton(HttpServletRequest request) {		
		//세션객체 초기화
		request.getSession().invalidate();
		return "<script>alert('로그아웃 되었습니다.'); location.href='/pas/login';</script>";					
	}
	
	@RequestMapping("list")
	public String list () {
		return "list";
	}
	
	@RequestMapping("write")
	public String write () {
		return "write";
	}
}
