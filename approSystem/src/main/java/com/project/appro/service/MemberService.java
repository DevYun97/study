package com.project.appro.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.appro.dao.ImemberDAO;

@Service
public class MemberService {
	
	@Autowired
	ImemberDAO memberDao;
	

	public int memberCard(String member_id) {
		
		String memInfor = memberDao.getMemId(member_id);
		int result;
		if( memInfor.equals(null)) {
			result = 0;
		} else {
			result = 1;
		}
		
		return result;
	}

}
