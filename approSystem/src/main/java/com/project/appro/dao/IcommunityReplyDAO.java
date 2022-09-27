package com.project.appro.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.appro.dto.CommunityReply;

@Mapper
public interface IcommunityReplyDAO {
	
	public int ReplyCount (String commu_no);
	
	public List<CommunityReply> replyList (String commu_no);
	
	public int ReplyWrite (String commu_no, String reply_id, String reply_name, String reply_content);

}
