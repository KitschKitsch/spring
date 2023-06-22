package com.java.dto;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component
@AllArgsConstructor // 전체 매개변수 생성자
@NoArgsConstructor // 기본 생성자
@Data // getter & setter
public class BoardDto {
	
	private int bno;
	private String btitle;
}
