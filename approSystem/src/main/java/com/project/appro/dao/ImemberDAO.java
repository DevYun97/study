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

	public int memberJoin( MemberDTO member );
			
	public int memberUpdate(MemberDTO member);
				
	public MemberDTO getMemberInpor(String member_id);
	
}
