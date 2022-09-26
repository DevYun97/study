package com.project.appro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("community")
public class CommunityController {
	
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
	public String noticeList () {
		return "community/noticeList";
	}
	
	@RequestMapping("noticeWrite")
	public String noticeWrite () {
		return "community/noticeWrite";
	}
	
	@RequestMapping("noticeDetail")
	public String noticeDetail () {
		return "community/noticeDetail";
	}

}
