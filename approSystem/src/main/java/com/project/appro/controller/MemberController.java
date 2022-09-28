package com.project.appro.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.appro.dao.ImemberDAO;
import com.project.appro.dto.MemberDTO;
import com.project.appro.service.MemberService;

@Controller
@RequestMapping("member")
public class MemberController {
	
	@Autowired
	ImemberDAO memberDao;
	
	@Autowired
	MemberService memService;
	
	
	@RequestMapping("memberList")
	public String memberList ( Model model) {
		
		ArrayList<MemberDTO> getMemberList = memberDao.getMemList();
		model.addAttribute("getMemberList", getMemberList);
		
		return "member/memberList";
	}
	
	@RequestMapping("memberCard")
	public String memberCard ( @RequestParam("member_id") String member_id, Model model ) {
		
		MemberDTO member = memberDao.getMemberInpor(member_id);
		model.addAttribute("member", member);
		return "member/memberCard";
	}
	
	//신규 사원 발급
	@RequestMapping("memberUpdate")
	@ResponseBody
	public String memberUpdate (@ModelAttribute MemberDTO member) {
		
		String result = memService.memberUpdate(member);
			
		return result;
	}

	//신규 사원 발급
	@RequestMapping("memberJoinAction")
	@ResponseBody
	public String memberJoinAction (@ModelAttribute MemberDTO member) {
		
		String result = memService.memberJoin(member);
		
		return result;
	}
}
