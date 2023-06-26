package com.java.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.java.dto.BoardDto;
import com.java.dto.MemberDto;
import com.java.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService; // 먼저 메소드 있는 boardServiceImpl 다형성 호출
	
	@RequestMapping("/board/boardList") // 주소받으면
	public String boardList(Model model) {
		
		// 게시글 전체 가져오는 메소드 호출! 전체 = 어레이리스트
		ArrayList<BoardDto> list = boardService.selectAll(); // 리턴타입 메소드명
		model.addAttribute("list", list);
		
		return "board/boardList"; // 여기로 리턴
	}

	
	@RequestMapping("board/boardView")
	public String boardView(@RequestParam(defaultValue = "1") int bno, Model model) {
		System.out.println("boardView bno:" + bno); // 이름만 똑같으면 자동형변환! String이지만 int로 자동형변환!
		
		// 게시글 1개 가져오는 메소드 호출! 게시글 1개 = 객체
		BoardDto bdto = boardService.selectOne(bno);
		model.addAttribute("bdto", bdto);
		
		return "board/boardView";
	}
	
	
	@GetMapping("/board/boardWrite")
	public String boardWrite() {
		return "board/boardWrite";
	}
	
	@PostMapping("/board/boardWrite")
	public String doBoardWrite(BoardDto bdto, @RequestPart MultipartFile file, 
			Model model) throws Exception{

		// 게시글 저장하는 메소드 호출
		String fileName="";
		if(!file.isEmpty()) { // 파일 있는지?(null과 다름!)

			String ori_fileName = file.getOriginalFilename();// 실제 파일 이름
			
			UUID uuid = UUID.randomUUID();// 랜덤 16자리 숫자 생성
			fileName = uuid+"_"+ori_fileName;// 변경 파일 이름(중복방지)
			
			String uploadurl = "c:/upload/";// 파일 업로드 위치
			File f = new File(uploadurl+fileName); 

			file.transferTo(f);// 파일 저장
		}
		System.out.println("doBoardWrite bfile: " + fileName);
		bdto.setBfile(fileName);// bfile 변수에 파일이름 저장
		boardService.insertOne(bdto);

		return "redirect:boardList";
	}
	
	
}
