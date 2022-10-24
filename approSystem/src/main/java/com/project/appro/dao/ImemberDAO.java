package com.project.appro.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.project.appro.dto.MemberDTO;

@Mapper
public interface ImemberDAO {

	public String getMemId(String member_id);
	
	public String getMemPw(String member_id);
	
	public String getMemName(String member_id);
	
	public String getMemPosition(String member_id);
	
	public ArrayList<Map<String, Object>> getMemList(Map<String, Object> map);

	public int memberJoin( MemberDTO member );
			
	public int memberUpdate(MemberDTO member);
				
	public MemberDTO getMemberInpor(String member_id);

	public int updatePwInfo(String member_id, String member_pw);

	public int memberDelete(String member_id);

	public String getMemDep(String member_id);

	public int memberCount(Map<String, Object> map);
	
}
