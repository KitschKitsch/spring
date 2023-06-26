package com.java.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.MemberDto;

@Mapper // pom.xml DB 주석 풀어야 Mapper 임포트 가능
public interface MemberMapper {
	
	// 로그인 확인
	MemberDto selectLogin(String id, String pw); // mdto로 받아도 무방!

}
