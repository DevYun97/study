package com.project.appro.dto;

import lombok.Data;

@Data
public class MemberDTO {
	
	private String member_id;
	private String member_pw;
	private String member_name;
	private String member_gender;
	private String member_dep;
	private String member_position;
	private String member_join;
	
	
	public MemberDTO(String member_id, String member_pw, String member_name, String member_gender, String member_dep,
			String member_position, String member_join) {
		super();
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_name = member_name;
		this.member_gender = member_gender;
		this.member_dep = member_dep;
		this.member_position = member_position;
		this.member_join = member_join;
	}
	
	
}
