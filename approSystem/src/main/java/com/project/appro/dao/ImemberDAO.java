package com.project.appro.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.project.appro.dto.MemberDTO;

@Mapper
public interface ImemberDAO {

	public String getMemId(String member_id);
	
	public String getMemPw(String member_id);
	
	public String getMemName(String member_id);
	
	public ArrayList<MemberDTO> getMemList();

	public int memberJoin( String member_name, String member_dep, String member_position, String member_gender);
			

	public int memberUpdate(String member_id, String member_dep, String member_position);
			
	
	public MemberDTO getMemberInpor(String member_id);
	
}
