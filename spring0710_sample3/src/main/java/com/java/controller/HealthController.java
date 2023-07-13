package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HealthController {
	
	@RequestMapping("/health/health_1")
	public String health_1() {
		return "health/health_1";
	}
	@RequestMapping("/health/demen.html")
	public String demen() {
		return "health/demen.html";
	}

}
