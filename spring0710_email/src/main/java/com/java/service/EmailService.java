package com.java.service;

public interface EmailService {
	
	// 임시비밀번호 코드 생성
	String insertPwCode(String name, String email);

}
