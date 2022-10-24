package com.project.appro.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.project.appro.dto.Community;

@Mapper
public interface IcommunityDAO {
	
	public ArrayList<Map<String, Object>> community( Map<String, Object> map);
	
	public int comWrite ( String commu_id, String commu_title, String commu_name, String commu_content);
	
	public Community comDetail (String commu_no);

	public void communityHit(String commu_no);
	
	public int comCount(Map<String, Object> map);
	

}
