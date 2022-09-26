package com.project.appro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class mainController {
	
	
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
	
	@RequestMapping("list")
	public String list () {
		return "list";
	}
	
	@RequestMapping("write")
	public String write () {
		return "write";
	}
}
