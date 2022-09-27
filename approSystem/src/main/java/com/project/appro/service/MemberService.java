package com.project.appro.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.appro.dao.ImemberDAO;

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

}
