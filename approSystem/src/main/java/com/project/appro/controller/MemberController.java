package com.project.appro.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.appro.dao.ImemberDAO;
import com.project.appro.dto.MemberDTO;

@Controller
@RequestMapping("member")
public class MemberController {
	
	@Autowired
	ImemberDAO memberDao;
	
	
	@RequestMapping("memberList")
	public String memberList ( Model model) {
		
		ArrayList<MemberDTO> getMemberList = memberDao.getMemList();
		model.addAttribute("getMemberList", getMemberList);
		
		System.out.println(getMemberList);
		
		return "member/memberList";
	}
	
	@RequestMapping("memberCard")
	public String memberCard () {
		return "member/memberCard";
	}

	//신규 사원 발급 액션
	@RequestMapping("memberJoinAction")
	public String memberJoinAction (@RequestParam("member_id") String member_id,@RequestParam("member_pw") String member_pw) {
		
		System.out.println("member_id:"+member_id +" | member_pw:"+member_pw);
		
		return "member/memberList";
	}
}
