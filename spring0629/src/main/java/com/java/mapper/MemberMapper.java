package com.java.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.MemberDto;

@Mapper
public interface MemberMapper {
	
	// 로그인
	MemberDto selectLogin(MemberDto memberDto);

}
