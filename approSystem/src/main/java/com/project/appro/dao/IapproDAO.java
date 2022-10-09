package com.project.appro.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.project.appro.dto.Appro;

@Mapper
public interface IapproDAO {

	List<Appro> approList(int report_no);

	public int approWrite( Map <String, Object> map );

}
