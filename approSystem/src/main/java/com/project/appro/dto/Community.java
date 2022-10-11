package com.project.appro.dto;

import lombok.Data;

@Data
public class Community {

	private int commu_no;
	private String commu_id;
	private String commu_name;
	private String commu_title;
	private String commu_content;
	private String commu_date;
	private int commu_hit;
	

	public Community(int commu_no, String commu_id, String commu_name, String commu_title, String commu_content,
			String commu_date, int commu_hit) {
		super();
		this.commu_no = commu_no;
		this.commu_id = commu_id;
		this.commu_name = commu_name;
		this.commu_title = commu_title;
		this.commu_content = commu_content;
		this.commu_date = commu_date;
		this.commu_hit = commu_hit;
	}
	
	
}
