package com.java.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dto.CommentDto;
import com.java.dto.MadangDto;
import com.java.service.FreeService;

@Controller
public class FreeController {
	
	@Autowired FreeService freeService;
	
	// 게시글 전체 가져오기
	@RequestMapping("/madangs_folder/madang_1_1")
	public String madang_1_1(Model model) {
		ArrayList<MadangDto> list = freeService.selectAll();
		model.addAttribute("list", list);
		
		return "madangs_folder/madang_1_1";
	}
	
	// 게시글 1개 + 댓글 가져오기
	@RequestMapping("/madangs_folder/madang_1_2")
	public String madang_1_2(int bno, Model model) {
		// 게시글 1개
		MadangDto mdto = freeService.selectOne(bno);
		// 댓글 가져오기
		ArrayList<CommentDto> list = freeService.selectComAll(bno);
		
		model.addAttribute("mdto", mdto);
		model.addAttribute("list", list);
		
		return "madangs_folder/madang_1_2";
	}
	
	
	
	// 네비게이션바
	@RequestMapping("/madangs_folder/madang_list")
	public String madang_list() {
		return "madangs_folder/madang_list";
	}

}
