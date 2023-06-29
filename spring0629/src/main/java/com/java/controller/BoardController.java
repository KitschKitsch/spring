package com.java.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.java.dto.BoardDto;
import com.java.dto.CommentDto;
import com.java.mapper.BoardMapper;
import com.java.service.BoardService;

@Controller // .jsp로 전달
// @RestController // 데이터로 전달
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping("/board/notice")
	public String notice(Model model) {
		ArrayList<BoardDto> list = new ArrayList<>();
		// 게시글 전체 가져오기
		list = boardService.selectAll();
		model.addAttribute("list", list);

		return "board/notice";
	}
	
	@RequestMapping("/board/noticeView")
	public String noticeView(int bno, Model model) {
		BoardDto bdto = new BoardDto();
		// 게시글 1개 가져오기
		bdto = boardService.selectOne(bno);
		// 하단 댓글 모두 가져오기
		ArrayList<CommentDto> comList = boardService.selectComAll(bno);
		model.addAttribute("bdto", bdto);
		model.addAttribute("comList", comList);
		
		return "board/noticeView";
	}
	
	@PostMapping("/board/commentInsert")
	@ResponseBody // 데이터로 반환!
	public CommentDto commentInsert(CommentDto comDto) {
		System.out.println("from ajax 데이터: "+comDto.getCcontent());
		// 하단 댓글 저장
		CommentDto cdto = boardService.commentInsert(comDto);
		
		
		return cdto;
	}
}
