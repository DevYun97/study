package com.project.appro.dto;

import lombok.Data;

@Data
public class MemberDTO {
	
	private String member_id;
	private String member_pw;
	private String member_name;
	
	public MemberDTO(String member_id, String member_pw, String member_name) {
		super();
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_name = member_name;
	}
}
