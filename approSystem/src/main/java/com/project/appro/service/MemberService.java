package com.project.appro.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.appro.dao.ImemberDAO;
import com.project.appro.dto.MemberDTO;

@Service
public class MemberService {

	@Autowired
	ImemberDAO memberDao;
	
	//Login
	public String login(String member_id, String member_pw, HttpSession session) {
		
		String result = "<script>alert('로그인 정보가 올바르지 않습니다.'); history.back(-1);</script>";		
				
		String id = memberDao.getMemId(member_id);
		if( id == null ) { // id null
			return result;
		}
		String pw = memberDao.getMemPw(member_id);
		if(member_pw.equals(pw)) { // pw == pw
			String name = memberDao.getMemName(member_id);
			session.setAttribute("id", id);
			session.setAttribute("pw", pw);
			session.setAttribute("name", name);
			result = "<script>location.href='../main';</script>";
		}
		return result;
	}

	//Update
	public String memberUpdate(MemberDTO member) {
		
		String result = "";
		int update = memberDao.memberUpdate(member);
		
		if(update == 0) {
			result = "<script>alert('정보 업데이트 실패'); history.back(-1);</script>";
		} else {
			result = "<script>alert('사원정보가 변경되었습니다.');location.href='../member/memberList';</script>";
		}	
		return result;
	}
	
	//Join
	public String memberJoin(MemberDTO member) {
		
		String result = "";
		int join = memberDao.memberJoin(member);
		
		if(join == 0) {
			result = "<script>alert('가입 실패'); history.back(-1);</script>";
		} else {
			result = "<script>alert('신규 사원의 아이디가 발급되었습니다.');location.href='../member/memberList';</script>";
		}	
		return result;
	}
	
}
