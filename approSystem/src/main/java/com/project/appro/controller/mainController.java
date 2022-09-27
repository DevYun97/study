package com.project.appro.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.appro.dao.ImemberDAO;
import com.project.appro.service.MemberService;

@Controller
public class mainController {

	@Autowired
	ImemberDAO memberDao;
	@Autowired
	MemberService memService;
	
	@RequestMapping("")
	public String root () {
		return "redirect:main";
	}
	
	@RequestMapping("main")
	public String index () {
		return "main";
	}
	
	@RequestMapping("login")
	public String login () {
		return "login";
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
		return "<script>alert('로그아웃 되었습니다.'); location.href='/login';</script>";					
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
