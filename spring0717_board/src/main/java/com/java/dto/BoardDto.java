package com.java.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class BoardDto {
	
	private int bno;
	private String id;
	private String btitle;
	private String bcontent;
	private Timestamp bdate;// sql timestamp!
	private int remainDate; // sysout-bdate 칼럼
	private int bhit;
	private int bgroup;
	private int bstep;
	private int bindent;
	private String bfile;
	
}
