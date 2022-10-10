package com.project.appro.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	
	//사원 정보 수정
	@RequestMapping("memberUpdate")
	@ResponseBody
	public String memberUpdate (@ModelAttribute MemberDTO member) {
		System.out.println(member);
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
	
	@RequestMapping("pwChkAjax")
	@ResponseBody
	public int pwChkAjax(
			@RequestParam("member_pw") String member_pw,
			HttpSession session) {
		String member_id;
		member_id = (String)session.getAttribute("id");
		
		int result = memService.pwChkAjax(member_id, member_pw);					
		return result;		
	}
	
	//비밀번호 변경
	@RequestMapping("pwChange")
	@ResponseBody
	public String pwChange(
			@RequestParam ("member_id") String member_id,
			@RequestParam ("member_pw") String member_pw,			
			HttpServletRequest request) {
		
		System.out.println(member_id);
		int result = memService.userPwUpdate(member_id, member_pw);
		if(result == 1) {
			request.getSession().invalidate();
			return "<script>alert('회원정보가 변경되었습니다.');location.href='../login';</script>";
		} else {
			return "<script>alert('error: 확인후 다시 시도해주세요.'); location.href=',,/member/memberList';</script>";
		}
			
	}
}
