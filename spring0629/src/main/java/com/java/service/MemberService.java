package com.java.service;

import com.java.dto.MemberDto;

public interface MemberService {
	
	// 로그인
	MemberDto selectLogin(MemberDto memberDto);

}