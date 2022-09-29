package com.project.appro.controller;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String approList ( @RequestParam Map <String, Object> map, HttpSession session ,Model model) {
				
		
		String member_id = (String) session.getAttribute("id");
		String member_position = (String) session.getAttribute("position");	
			
		ArrayList<Map <String, Object>> reportList = new ArrayList<>();
		map.put("member_id", member_id);
		map.put("member_position", member_position);
		reportList = reportDao.reportList( map );
		model.addAttribute("reportList", reportList);
		
		return "appro/approList";
	}
	
	@RequestMapping("approWrite")
	public String approWrite ( ) {
		return "appro/approWrite";
	}
	
	@RequestMapping("reportWriteAction")
	@ResponseBody
	public String reportWriteAction (@ModelAttribute Report report) {
		
		String result = approService.reportWrite(report);
		
		return result;
	}
	
	@RequestMapping("reportUpdate")
	public String reportUpdate (@RequestParam("report_no") int report_no, Model model) {
		
		Report report = reportDao.reportDetail(report_no);
		model.addAttribute("report", report);
		
		return "appro/approWrite";
	}
	
	@RequestMapping("reportUpdateAction")
	
	public String reportUpdateAction (@ModelAttribute Report report) {
		
		int result = approService.reportUpdate(report);
		
		if(result == 0) {
			return "appro/approList";
		} else {
			return "redirect:approList";
		}
		
		
	}
	
	@RequestMapping("approDetail")
	public String approDetail (@RequestParam("report_no") int report_no, Model model) {
		
		Report report = reportDao.reportDetail(report_no);
		model.addAttribute("report", report);
		
		return "appro/approDetail";
	}
	
	@RequestMapping("approPop")
	public String approPop () {
		return "appro/approPop";
	}

}
