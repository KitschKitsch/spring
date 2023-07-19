package com.java.service;

import com.java.dto.MemberDto;

public interface MemberService {
	
	// 회원 로그인
	String selectOne(String id, String pw);
	
	// 회원1명검색
	MemberDto selectOneM(String id);

}
