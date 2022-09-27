package com.project.appro.dto;

import lombok.Data;

@Data
public class Appro {

	private String report_no;
	private String appro_id;
	private String report_approver;
	private String appro_dep;
	private String appro_position;
	private String appro_content;
	private String appro_status;
	private String appro_date;
	
	
	public Appro(String report_no, String appro_id, String report_approver, String appro_dep, String appro_position,
			String appro_content, String appro_status, String appro_date) {
		super();
		this.report_no = report_no;
		this.appro_id = appro_id;
		this.report_approver = report_approver;
		this.appro_dep = appro_dep;
		this.appro_position = appro_position;
		this.appro_content = appro_content;
		this.appro_status = appro_status;
		this.appro_date = appro_date;
	}
	
	
	
}
