package com.java.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor // 전체 매개변수 생성자
@NoArgsConstructor // 기본 생성자
@Data // getter & setter
public class MemberDto {
	
	private String id;
	private String pw;
	private String name;
	private String gender;
	private String hobby;
	
}
