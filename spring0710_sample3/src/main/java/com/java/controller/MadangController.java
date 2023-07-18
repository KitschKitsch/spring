package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MadangController {

	@RequestMapping("/madangs_folder/madang_1")
	public String madang_1() {
		return "madangs_folder/madang_1";
	}
	
	@RequestMapping("/madangs_folder/madang_list")
	public String mandang_list() {
		return "madangs_folder/madang_list";
	}
}
