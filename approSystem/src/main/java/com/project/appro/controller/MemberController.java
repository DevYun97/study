package com.project.appro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("member")
public class MemberController {
	
	@RequestMapping("memberList")
	public String memberList () {
		return "member/memberList";
	}
	
	@RequestMapping("memberCard")
	public String memberCard () {
		return "member/memberCard";
	}

}
