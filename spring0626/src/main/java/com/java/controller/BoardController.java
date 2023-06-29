package com.java.controller;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
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
	public String boardList(@RequestParam(defaultValue = "1")int page, String category, String s_word, Model model) {
		
		// 게시글 전체 가져오는 메소드 호출
		HashMap<String, Object> map = boardService.selectAll(page, category, s_word); // 리턴타입-HashMap 메소드명-selectAll(page)
		model.addAttribute("list", map.get("list"));// model에 값 실어서 "list":list
		model.addAttribute("page", map.get("page"));
		model.addAttribute("listCount", map.get("listCount"));
		model.addAttribute("startPage", map.get("startPage"));
		model.addAttribute("endPage", map.get("endPage"));
		model.addAttribute("maxPage", map.get("maxPage"));
		model.addAttribute("category", map.get("category"));
		model.addAttribute("s_word", map.get("s_word"));

		return "board/boardList"; // 여기로 리턴
	}// boardList

	
	@RequestMapping("/board/boardView")
	public String boardView(@RequestParam(defaultValue = "1")int bno, int page, String category, String s_word, Model model) {
		// 게시글 1개 조회하는 메소드 호출(게시글 1개 = 객체)
		HashMap<String, Object> map = boardService.selectOne(bno); //bdto 객체를
		
		model.addAttribute("bdto", map.get("bdto"));// model에 bdto이름으로 실어서
		model.addAttribute("prevDto", map.get("prevDto"));// model에 prevDto이름으로 실어서
		model.addAttribute("nextDto", map.get("nextDto"));// model에 nextDto이름으로 실어서
		model.addAttribute("page", page);// model에 page이름으로 실어서
		model.addAttribute("category", category);// model에 category이름으로 실어서
		model.addAttribute("s_word", s_word);// model에 s_word이름으로 실어서

		return "board/boardView";// 반환
	}// boardView

	
	@GetMapping("/board/boardWrite")
	public String boardWrite() {
		return "board/boardWrite";
	}// boardWrite
	@PostMapping("/board/boardWrite")
	public String doBoardWrite(BoardDto bdto, @RequestPart MultipartFile file, Model model) throws Exception {
		// 게시글 저장하기
		String fileName = "";
		if (!file.isEmpty()) { // 파일 있는지?(null과 다름!)
			String ori_fileName = file.getOriginalFilename();// 파일의 원본 이름
			UUID uuid = UUID.randomUUID();// 랜덤 16자리 숫자 생성하기
			fileName = uuid + "_" + ori_fileName;// 파일 이름에 난수 붙이기(중복방지)
			String uploadUrl = "c:/upload/";// 파일 업로드 하려는 위치
			File f = new File(uploadUrl + fileName);// 경로 + 파일명
			file.transferTo(f);// 파일 저장
		}
		bdto.setBfile(fileName);// bfile 변수에 fileName 저장
		boardService.insertOne(bdto);// 게시글 저장하는 메소드 호출

		return "redirect:boardList";
	}// doBoardWrite
	

	@GetMapping("/board/boardDelete")
	public String boardDelete(int bno) {
		boardService.deleteOne(bno);// 게시글 삭제하는 메소드 호출
		
		return "redirect:boardList";
	}// boardDelete
	

	@GetMapping("/board/boardUpdate") // boardUpdate view
	public String boardUpdate(int bno, int page, String category, String s_word, Model model) {
		HashMap<String, Object> map = boardService.selectOne(bno);// 게시글 1개 조회하는 메소드 호출
		model.addAttribute("bdto", map.get("bdto"));
		model.addAttribute("page", page);
		model.addAttribute("category", category);
		model.addAttribute("s_word", s_word);
		
		return "board/boardUpdate";
	}// boardUpdate
	@PostMapping("/board/boardUpdate") // boardUpdate 저장
	public String doBoardUpdate(BoardDto bdto, @RequestPart MultipartFile file, int page, String category, String s_word, Model model) throws Exception {

		// 게시글 1개 수정
		String fileName = "";
		if (!file.isEmpty()) { // 파일 있는지?(null과 다름!)
			String ori_fileName = file.getOriginalFilename();// 파일의 원본 이름
			UUID uuid = UUID.randomUUID();// 랜덤 16자리 숫자 생성하기
			fileName = uuid + "_" + ori_fileName;// 파일 이름에 난수 붙이기(중복방지)
			String uploadUrl = "c:/upload/";// 파일 업로드 하려는 위치
			File f = new File(uploadUrl + fileName);// 경로 + 파일명
			file.transferTo(f);// 파일 저장
			bdto.setBfile(fileName);// bfile 변수에 filename 저장
		}
		model.addAttribute("page", page);
		model.addAttribute("category", category);
		model.addAttribute("s_word", s_word);
		
		
		boardService.updateOne(bdto);// 게시글 1개 수정하는 메소드 호출
		s_word = URLEncoder.encode(s_word, "utf-8");// 한글 인코딩
		return "redirect:boardList?page="+page+"&category="+category+"&s_word="+s_word;
	}// doBoardUpdate
	
	
	@GetMapping("/board/boardReply") // boardReply view
	public String boardReply(int bno, int page, String category, String s_word, Model model) {
		System.out.println("boardReply bno: " + bno);
		HashMap<String, Object> map = boardService.selectOne(bno); // 게시글 1개 가져오기
		model.addAttribute("bdto", map.get("bdto"));
		model.addAttribute("page", page);
		model.addAttribute("category", category);
		model.addAttribute("s_word", s_word);
		
		return "board/boardReply";
	}// boardReply
	@PostMapping("/board/boardReply") // boardReply 저장
	public String doBoardReply(BoardDto bdto, @RequestPart MultipartFile file, int page, String category, String s_word, Model model) throws Exception {
		// 답변 저장
		String fileName = "";
		if (!file.isEmpty()) { // 파일 있는지?(null과 다름!)
			String ori_fileName = file.getOriginalFilename();// 파일의 원본 이름
			UUID uuid = UUID.randomUUID();// 랜덤 16자리 숫자 생성하기
			fileName = uuid + "_" + ori_fileName;// 파일 이름에 난수 붙이기(중복방지)
			String uploadUrl = "c:/upload/";// 파일 업로드 하려는 위치
			File f = new File(uploadUrl + fileName);// 경로 + 파일명
			file.transferTo(f);// 파일 저장
		}
		model.addAttribute("page", page);
		model.addAttribute("category", category);
		model.addAttribute("s_word", s_word);
		
		bdto.setBfile(fileName);// bfile 변수에 filename 저장
		boardService.insertReplyOne(bdto);// 답변 다는 메소드 호출
		
		return "redirect:boardList";
	}// doBoardReply

}
