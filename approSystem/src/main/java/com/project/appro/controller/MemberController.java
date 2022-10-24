package com.project.appro.controller;

import java.util.ArrayList;
import java.util.Map;

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
import com.project.appro.dto.Page;
import com.project.appro.service.MemberService;

@Controller
@RequestMapping("member")
public class MemberController {
	
	@Autowired
	ImemberDAO memberDao;
	
	@Autowired
	MemberService memService;
	
	
	@RequestMapping("memberList")
	public String memberList ( @RequestParam Map<String, Object> map, Model model) {
		
		if(map.isEmpty()) {
			map.put("pageNo", 1);
			map.put("listSize", 9);
		}
		
		int count = memberDao.memberCount(map);
		int curPage = Integer.parseInt(map.get("pageNo").toString());
		
		Page page = new Page(count, curPage);
		
		ArrayList<Map<String, Object>> getMemberList = memberDao.getMemList(map);
		
		model.addAttribute("getMemberList", getMemberList);
		model.addAttribute("page", page);
		model.addAttribute("sch", map);
		
		
		
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

	@RequestMapping("memberDelete")
	public String memberDelete (@RequestParam("member_id") String member_id ) {
		System.out.println(member_id);
		int result = memberDao.memberDelete(member_id);
		if(result == 0) {
			return "redirect:memberList";
		} else {
			return "redirect:memberList";
		}		
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
