package com.java.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class BoardDto {

	private int bno;
	private String id;
	private String btitle;
	private String bcontent;
	private Timestamp bdate;
	private int remainDate;
	private int bhit;
	private int bgroup;
	private int bstep;
	private int bindent;
	private String bfile; // 파일저장이름 한번에 주욱
	private String[] bfiles; // 파일이름 list 출력할 때 사용
	
	
	
	
	
}