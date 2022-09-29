package com.project.appro.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.project.appro.dto.Report;

@Mapper
public interface IreportDAO {

	public int reportWrite(Report report);

	public ArrayList<Map <String, Object>> reportList(Map <String, Object> map);

	public Report reportDetail(int report_no);

	public int reportUpdate(Report report);

}
