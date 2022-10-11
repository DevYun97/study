package com.project.appro.dto;

import lombok.Data;

@Data
public class CommunityReply {

	private int commu_no;
	private String reply_id;
	private String reply_name;
	private String reply_content;
	private String reply_date;
	
	public CommunityReply(int commu_no, String reply_id, String reply_name, String reply_content,
			String reply_date) {
		super();
		this.commu_no = commu_no;
		this.reply_id = reply_id;
		this.reply_name = reply_name;
		this.reply_content = reply_content;
		this.reply_date = reply_date;
	}
	
	
}
