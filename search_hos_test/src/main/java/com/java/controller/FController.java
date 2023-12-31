package com.java.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.dto.HosDto;
import com.java.service.HosService;

@Controller
public class FController {
	
	@Autowired
	HosService hosService;
	
	@RequestMapping("/hos_search")
	public String hos_search() {
		return "hos_search";
	}
	
	// 전체 데이터 가져오기
	@RequestMapping("/allData")
	@ResponseBody
	public ArrayList<HosDto> allData(Model model) {
		ArrayList<HosDto> list = hosService.selectAll();
		model.addAttribute("list", list);
		return list;
	}
	
	// 병원 데이터만 가져오기
	@RequestMapping("/hosBtn")
	@ResponseBody
	public ArrayList<HosDto> hosBtn(Model model) {
		ArrayList<HosDto> list = hosService.selectHos();
		model.addAttribute("list", list);
		return list;
	}
	
	// 약국 데이터만 가져오기
	@RequestMapping("/pharmBtn")
	@ResponseBody
	public ArrayList<HosDto> pharmBtn(Model model) {
		ArrayList<HosDto> list = hosService.selectPharm();
		model.addAttribute("list", list);
		return list;
	}
	
	// 요양병원 데이터만 가져오기
	@RequestMapping("/nursBtn")
	@ResponseBody
	public ArrayList<HosDto> nursBtn(Model model) {
		ArrayList<HosDto> list = hosService.selectNurs();
		model.addAttribute("list", list);
		return list;
	}
	

}
