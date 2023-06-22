package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	
	@RequestMapping("/board/board1")// 이런 url 받으면
	public String board1() {
		return "board/board1";// /WEB-INF/board/board1.jsp 로 보내기
	}
	
}
