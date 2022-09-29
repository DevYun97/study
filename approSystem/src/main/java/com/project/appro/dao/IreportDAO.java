package com.project.appro.dao;

import org.apache.ibatis.annotations.Mapper;

import com.project.appro.dto.Report;

@Mapper
public interface IreportDAO {

	public int reportWrite(Report report);

}
