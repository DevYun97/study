package com.project.appro.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.appro.dao.IapproDAO;
import com.project.appro.dao.IreportDAO;
import com.project.appro.dto.Report;

@Service
public class ApproService {
	
	@Autowired
	IreportDAO reportDao;
	
	@Autowired
	IapproDAO approDao;

	public String reportWrite(Report report) {
		
		String result ="";
		
		int reportWrite = reportDao.reportWrite(report);
		if( reportWrite == 0 ) {
			result = "<script>location.href='history.back(-1)';</script>";
		} else {
			result = "<script>alert('작성 완료'); location.href='../appro/approList';</script>";
		}
		
		return result;
	}

}
