package com.java.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.java.dto.CommentDto;
import com.java.dto.MadangDto;
import com.java.dto.PageDto;
import com.java.service.FreeService;

@Controller
public class FreeController {
	
	@Autowired FreeService freeService;
	
	// 게시글 전체 가져오기
	@RequestMapping("/madangs_folder/madang_1_1")
	public String madang_1_1(PageDto pageDto, String s_opt, String s_word, @RequestParam(defaultValue = "10") String rowPP, Model model) {
		HashMap<String, Object> map = freeService.selectAll(pageDto, s_opt, s_word, rowPP);
		
		model.addAttribute("list", map.get("list"));
		model.addAttribute("pageDto", map.get("pageDto"));
		model.addAttribute("s_opt", map.get("s_opt"));
		model.addAttribute("s_word", map.get("s_word"));
		model.addAttribute("rowPP", rowPP);
		
		return "madangs_folder/madang_1_1";
	}
	
	// 게시글 1개 + 댓글 가져오기
	@RequestMapping("/madangs_folder/madang_1_2")
	public String madang_1_2(int bno, Model model) {
		// 게시글 1개(+이전글 다음글)
		HashMap<String, Object> map = freeService.selectOne(bno);
		// 댓글 가져오기
		ArrayList<CommentDto> list = freeService.selectComAll(bno);
		
		model.addAttribute("mdto", map.get("mdto"));
		model.addAttribute("prevMdto", map.get("prevMdto"));
		model.addAttribute("nextMdto", map.get("nextMdto"));
		model.addAttribute("list", list);
		
		return "madangs_folder/madang_1_2";
	}
	
	
	
	// 네비게이션바
	@RequestMapping("/madangs_folder/madang_list")
	public String madang_list() {
		return "madangs_folder/madang_list";
	}

}
