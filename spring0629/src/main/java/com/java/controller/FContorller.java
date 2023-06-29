package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FContorller {
	
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
}
