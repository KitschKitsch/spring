package com.java.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class IncomeDto {
	
	private int ino;
	private String iyear;
	private String imonth;
	private String iday;
	private int iincome;
}
