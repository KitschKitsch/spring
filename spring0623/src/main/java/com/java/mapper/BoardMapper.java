package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.MemberDto;

@Mapper // MyBatis와 연결하는 어노테이션 -> xml에서 구문 찾음
public interface BoardMapper {
	
	// 회원 전체 가져오기
	ArrayList<MemberDto> memberSelectAll();
	
	// 회원 1명 가져오기
	MemberDto memberSelectOne(String id);

}
