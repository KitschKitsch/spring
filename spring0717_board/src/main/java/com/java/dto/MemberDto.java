package com.java.dto;

import lombok.AllArgsConstructor;
import lombok.Builder; // 부분생성자
import lombok.Data;
import lombok.NoArgsConstructor;

// @Builder // 부분생성자
@NoArgsConstructor
@AllArgsConstructor
@Data
public class MemberDto {
	
	private String id;
	private String pw;
	private String name;
	private String phone;
	private String[] phones;
	private String gender;
	private String[] hobbys;
	private String hobby;
}
