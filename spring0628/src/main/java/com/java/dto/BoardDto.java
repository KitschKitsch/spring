package com.java.dto;

import java.sql.Timestamp;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor // 전체 매개변수 생성자
@NoArgsConstructor // 기본생성자
@Data // getter & setter
public class BoardDto {
	
	private int bno; 
	private String id; 
	private String btitle; 
	private String bcontent; 
	private Timestamp bdate; // Date: java.util! java.sql X! 	Timestamp: java.sql! java.security X! 
	private int bhit; 
	private int bgroup; 
	private int bstep; 
	private int bindent; 
	private String bfile; 
		
}
