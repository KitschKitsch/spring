package com.java.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dto.HosDto;
import com.java.service.HosService;

@Controller
public class FController {
	
	@Autowired
	HosService hosService;
	
	@RequestMapping("/index2")
	public String index2() {
		return "index2";
	}
	
	@RequestMapping("/hos_data")
	public ArrayList<HosDto> hos_data() {
		ArrayList<HosDto> list = hosService.selectAll();
		return list;
	}
	

}
