package com.project.appro.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String memberUpdate (
			@RequestParam("member_id") String member_id,
			@RequestParam("member_dep") String member_dep,
			@RequestParam("member_position") String member_position
			) {
			
		String result = memService.memberUpdate(member_id , member_dep, member_position);
			
		return result;
	}

	//신규 사원 발급
	@RequestMapping("memberJoinAction")
	@ResponseBody
	public String memberJoinAction (
			@RequestParam("member_name") String member_name,
			@RequestParam("member_dep") String member_dep,
			@RequestParam("member_position") String member_position,
			@RequestParam("member_gender") String member_gender
			) {
		
		String result = memService.memberJoin(member_name, member_dep, member_position, member_gender);
		
		return result;
	}
}
