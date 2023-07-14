package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HealthController {
	
	@RequestMapping("/health/health_1")
	public String health_1() {
		return "health/health_1";
	}
	@RequestMapping("/health/health_2")
	public String health_2() {
		return "health/health_2";
	}

}
