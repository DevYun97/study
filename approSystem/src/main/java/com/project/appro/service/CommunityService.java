package com.project.appro.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.appro.dao.IcommunityDAO;

@Service
public class CommunityService {

	@Autowired
	IcommunityDAO comDao;
	
	//noticeWrite
	public String noticeWrite(String notice_id, String notice_title, String notice_name, String notice_content) {
		
		String result = "";
		
		int notice = comDao.noticeWrite(notice_id, notice_title, notice_name, notice_content);		
		if( notice == 0 ) {
			result = "<script>history.back()-1;</script>";
		} else {
			result = "<script>location.href='noticeList';</script>";
		}
		
		return result;
	}

	public String noticeDelete(String notice_no) {
		
		String result = "";
		
		int notice = comDao.noticeDelete(notice_no);		
		if( notice == 0 ) {
			result = "<script>history.back()-1;</script>";
		} else {
			result = "<script>location.href='noticeList';</script>";
		}
		
		return result;
	}	

}
