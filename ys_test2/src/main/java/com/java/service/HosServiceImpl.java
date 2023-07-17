package com.java.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.HosDto;
import com.java.mapper.HosMapper;

@Service
public class HosServiceImpl implements HosService {

	@Autowired
	HosMapper hosMapper;
	
	// 전체 데이터 가져오기
	@Override
	public ArrayList<HosDto> selectAll() {
		ArrayList<HosDto> list = hosMapper.selectAll(); 
		return list;
	}
	
	// 병원 데이터만 가져오기
	@Override
	public ArrayList<HosDto> selectHos() {
		ArrayList<HosDto> list = hosMapper.selectHos();
		return list;
	}
	
	// 약국 데이터만 가져오기
	@Override
	public ArrayList<HosDto> selectPharm() {
		ArrayList<HosDto> list = hosMapper.selectPharm();
		return list;
	}
	
	// 요양병원 데이터만 가져오기
	@Override
	public ArrayList<HosDto> selectNurs() {
		ArrayList<HosDto> list = hosMapper.selectNurs();
		return list;
	}
	
	// 데이터 1개 가져오기
	@Override
	public ArrayList<HosDto> selectOne(int hno) {
		ArrayList<HosDto> list = hosMapper.selectOne(hno); 
		return list;
	}

}
