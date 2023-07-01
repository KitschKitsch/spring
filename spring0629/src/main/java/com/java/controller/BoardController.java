package com.java.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.java.dto.BoardDto;
import com.java.dto.CommentDto;
import com.java.mapper.BoardMapper;
import com.java.service.BoardService;

@Controller // .jsp로 전달
//@RestController // 데이터로 전달
public class BoardController {
	
	@Autowired BoardService boardService;
	
	@RequestMapping("/board/notice")
	public String notice(@RequestParam(defaultValue = "1") int page, String category, String s_word, Model model) {
		// 게시글 전체 가져오기
		HashMap<String, Object> map = boardService.selectAll(page, category, s_word);
		
		model.addAttribute("list", map.get("list"));// list: list
		model.addAttribute("page", map.get("page"));
		model.addAttribute("listCount", map.get("listCount"));
		model.addAttribute("startPage", map.get("startPage"));
		model.addAttribute("endPage", map.get("endPage"));
		model.addAttribute("maxPage", map.get("maxPage"));
		model.addAttribute("category", map.get("category"));
		model.addAttribute("s_word", map.get("s_word"));
		
		return "board/notice";
	}
	
	@RequestMapping("/board/noticeView")
	public String noticeView(int bno, Model model) {
		// 게시글 1개 가져오기
		BoardDto bdto = boardService.selectOne(bno);
		
		// 하단 댓글 모두 가져오기
		ArrayList<CommentDto> comList = boardService.selectComAll(bno);
		
		model.addAttribute("bdto", bdto);// bdto : bdto
		model.addAttribute("comList", comList);// comList: comList
		
		return "board/noticeView";
	}
	
	@PostMapping("/board/commentInsert")
	@ResponseBody // String(페이지) 말고 데이터 자체로 반환!
	public CommentDto commentInsert(CommentDto comDto) { // from ajax: id, bno, ccontent, cpw
		System.out.println("from ajax 데이터: "+comDto.getCcontent());	// cno와 cdate는 각각 시퀀스와 sysdate가 기본값임! ==> CommentDto로 받아도 무방!!!
		
		// 하단 댓글 저장 + 1개 가져오기
		CommentDto cdto = boardService.commentInsert(comDto);
		
		return cdto;
	}
}
