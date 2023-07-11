package com.java.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class MemCustDto {
	
	private MemberDto memberDto;
	private CustomerDto customerDto;

}
