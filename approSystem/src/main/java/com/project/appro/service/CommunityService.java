package com.project.appro.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.appro.dao.IcommunityDAO;
import com.project.appro.dao.IcommunityReplyDAO;
import com.project.appro.dao.InoticeDAO;
import com.project.appro.dto.Community;

@Service
public class CommunityService {

	@Autowired
	IcommunityDAO comDao;
	
	@Autowired
	InoticeDAO noticeDao;
	
	@Autowired
	IcommunityReplyDAO replyDao;
	
	public String comWrite(String commu_id, String commu_title, String commu_name, String commu_content) {
		
		String result = "";
		
		int community = comDao.comWrite(commu_id, commu_title, commu_name, commu_content);		
		if( community == 0 ) {
			result = "<script>history.back()-1;</script>";
		} else {
			result = "<script>location.href='communityList';</script>";
		}
		
		return result;
	}	
	
	public String communityUpdate( String commu_no, String commu_title, String commu_content) {
		
		String result = "";
		
		int updating = comDao.comUpdate(commu_no, commu_title, commu_content);
		
		if( updating == 0 ) {
			result = "<script>history.back()-1;</script>";
		} else {
			result = "<script>location.href='communityDetail?commu_no="+commu_no+"';</script>";
		}
		return result;
	}
	
	public String communityDelete( String commu_no ) {
		
		int result = comDao.comDelete(commu_no);
		
		if(result == 1) {
			return "<script>alert('게시글 삭제에 성공하였습니다.'); location.href='communityList';</script>";
		}
		else {
			return "<script>alert('게시글 삭제에 실패하였습니다.'); history.back(-1);</script>";
		}		
	}
	
	//replyWrite
	public String replyWrite(String commu_no, String reply_id, String reply_name, String reply_content) {
		
		String result = "";
		
		int reply = replyDao.ReplyWrite(commu_no, reply_id, reply_name, reply_content);
		if( reply == 0 ) {
			result = "<script>history.back()-1;</script>";
		} else {
			result = "<script>location.href='communityDetail?commu_no="+commu_no+"';</script>";
		}
		return result;
	}
	
	
	//noticeWrite
	public String noticeWrite(String notice_id, String notice_title, String notice_name, String notice_content) {
		
		String result = "";
		
		int notice = noticeDao.noticeWrite(notice_id, notice_title, notice_name, notice_content);		
		if( notice == 0 ) {
			result = "<script>history.back()-1;</script>";
		} else {
			result = "<script>location.href='noticeList';</script>";
		}
		
		return result;
	}

	public String noticeDelete(String notice_no) {
		
		String result = "";
		
		int notice = noticeDao.noticeDelete(notice_no);		
		if( notice == 0 ) {
			result = "<script>history.back()-1;</script>";
		} else {
			result = "<script>location.href='noticeList';</script>";
		}
		
		return result;
	}

}
