package com.project.appro.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.project.appro.dto.Member;

@Mapper
public interface ImemberDAO {

	public String getMemId(String member_id);

	public ArrayList<Member> getMemList();

	public String memInfor(String member_id);
	
}
