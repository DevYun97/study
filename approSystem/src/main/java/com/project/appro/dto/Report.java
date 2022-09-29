package com.project.appro.dto;

import org.springframework.stereotype.Component;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component
@NoArgsConstructor
@Data
public class Report {

	private int report_no;
	private String report_id;
	private String report_name;
	private String report_title;
	private String report_content;
	private String report_approver;
	private String report_status;
	private String report_date;
	
	@Builder
	public Report(int report_no, String report_id, String report_name, String report_title, String report_content,
			String report_approver, String report_status, String report_date) {
		super();
		this.report_no = report_no;
		this.report_id = report_id;
		this.report_name = report_name;
		this.report_title = report_title;
		this.report_content = report_content;
		this.report_approver = report_approver;
		this.report_status = report_status;
		this.report_date = report_date;
	}
	
	
}
