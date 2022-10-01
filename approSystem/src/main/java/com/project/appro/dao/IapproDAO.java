package com.project.appro.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.appro.dto.Appro;

@Mapper
public interface IapproDAO {

	List<Appro> approList(int report_no);

}
