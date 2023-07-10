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
	
	@Override
	public ArrayList<HosDto> selectAll() {
		ArrayList<HosDto> list = hosMapper.selectAll(); 
		return list;
	}

}
