package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.HosDto;

@Mapper
public interface HosMapper {

	ArrayList<HosDto> selectAll();

}
