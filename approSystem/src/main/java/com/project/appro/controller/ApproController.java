package com.project.appro.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.appro.dao.IapproDAO;
import com.project.appro.dao.IreportDAO;
import com.project.appro.dto.Report;
import com.project.appro.service.ApproService;

@Controller
@RequestMapping("appro")
public class ApproController {
	
	@Autowired
	ApproService approService;
	
	@Autowired
	IreportDAO reportDao;
	
	@Autowired
	IapproDAO approDao;
	
	@RequestMapping("approList")
	public String approList () {
		return "appro/approList";
	}
	
	@RequestMapping("approWrite")
	public String approWrite ( ) {
		return "appro/approWrite";
	}
	
	@RequestMapping("reportWriteAction")
	@ResponseBody
	public String reportWriteAction (@ModelAttribute Report report) {
		
		System.out.println(report);
		String result = approService.reportWrite(report);
		
		return result;
	}
	
	@RequestMapping("approDetail")
	public String approDetail (@RequestParam("report_no") int report_no) {
		return "appro/approDetail";
	}
	
	@RequestMapping("approPop")
	public String approPop () {
		return "appro/approPop";
	}

}
