package com.project.appro.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.project.appro.dto.Notice;

@Mapper
public interface IcommunityDAO {
	
	public ArrayList<Notice> notice();
	
	public int noticeWrite(String notice_id, String notice_title, String notice_name, String notice_content);

	public Notice getNoticeDetail(String notice_no);

	public int noticehit(String notice_no);

	public int noticeDelete(String notice_no);

}
