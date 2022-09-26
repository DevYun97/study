package com.project.appro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("appro")
public class ApproController {
	
	@RequestMapping("approList")
	public String approList () {
		return "appro/approList";
	}
	
	@RequestMapping("approWrite")
	public String approWrite () {
		return "appro/approWrite";
	}

}
