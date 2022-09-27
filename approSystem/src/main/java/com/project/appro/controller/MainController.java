package com.project.appro.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.appro.dao.ImemberDAO;

@Controller
public class MainController {

	@Autowired
	ImemberDAO memberDao;
	
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
	public String logiActionn (
			@RequestParam("member_id") String member_id,
			@RequestParam("member_pw") String member_pw) {
		
		System.out.println("member_id:"+member_id +" | member_pw:"+member_pw);
		
		
		return "login";
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
