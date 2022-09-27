package com.project.appro.dto;

import lombok.Data;

@Data
public class Notice {

	private String notice_no;
	private String notice_name;
	private String notice_title;
	private String notice_content;
	private String notice_date;
	private int notice_hit;
	private String notice_id;
	

	public Notice(String notice_no, String notice_name, String notice_title, String notice_content, String notice_date,
			int notice_hit, String notice_id) {
		super();
		this.notice_no = notice_no;
		this.notice_name = notice_name;
		this.notice_title = notice_title;
		this.notice_content = notice_content;
		this.notice_date = notice_date;
		this.notice_hit = notice_hit;
		this.notice_id = notice_id;
	}
	
	
}
