package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.HosDto;

@Mapper
public interface HosMapper {
	
	// 전체 데이터 가져오기
	ArrayList<HosDto> selectAll();
	
	// 병원 데이터만 가져오기
	ArrayList<HosDto> selectHos();
	
	// 약국 데이터만 가져오기
	ArrayList<HosDto> selectPharm();
	
	// 요양병원 데이터만 가져오기
	ArrayList<HosDto> selectNurs();

	// 데이터 1개 가져오기
	ArrayList<HosDto> selectOne(int hno);
}
