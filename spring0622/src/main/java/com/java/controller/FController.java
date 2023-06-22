package com.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dto.BoardDto;
import com.java.service.BSerivice;
import com.java.service.BServiceImpl;
import com.java.service.BServiceImpl2;

@Controller
public class FController {
	
	/*
	 * @Autowired // 자동객체선언 BoardDto bdto; //BoardDto bdto = new BoardDto();
	 */	
	@Autowired
	BSerivice bService; // = new BServiceImpl(); 조상의 참조변수로 자손 객체를 선언: 다형성
	
	@GetMapping("/index")// get방식으로 이런 url 받으면
	public String index() {
		/*
		 * bdto.setBno(1); System.out.println("bno: " + bdto.getBno());
		 */
		System.out.println("s: " + bService.add());
		return "index"; // /WEB-INF/views/index.jsp 로 보내기
	}
	
}
