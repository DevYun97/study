package com.project.appro.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.project.appro.dto.Notice;

@Mapper
public interface InoticeDAO {
	
	public ArrayList<Map<String, Object>> notice( Map<String, Object> map);
	
	public int noticeWrite(String notice_id, String notice_title, String notice_name, String notice_content);

	public Notice getNoticeDetail(String notice_no);

	public int noticehit(String notice_no);

	public int noticeDelete(String notice_no);

	public int noticeCount(Map<String, Object> map);

}
