package com.java.contorller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dto.BoardDto;
import com.java.dto.PageDto;
import com.java.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired BoardService boardService;
	
	// 게시글 전체 가져오기
	@RequestMapping("/board/boardList")
	public String boardList(PageDto pageDto, Model model) {
		System.out.println("BoardController page:" + pageDto.getPage());
		
		HashMap<String, Object> map = boardService.selectAll(pageDto);
		model.addAttribute("list", map.get("list"));
		model.addAttribute("pageDto", map.get("pageDto"));
		
		return "board/boardList";
	}

}
