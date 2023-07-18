package com.java.service;

import java.util.ArrayList;

import com.java.dto.HosDto;

public interface HosService {
	
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
