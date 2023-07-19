package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HealthController {
	
	@RequestMapping("/healths_folder/health_1")
	public String health_1() {
		return "healths_folder/health_1";
	}
	@RequestMapping("/healths_folder/health_2")
	public String health_2() {
		return "health_folder/health_2";
	}

}
