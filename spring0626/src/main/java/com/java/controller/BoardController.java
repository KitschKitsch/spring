package com.java.controller;

import java.io.File;
import java.io.IOException;
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
	public String boardList(@RequestParam(defaultValue = "1")int page, Model model) {
		
		// 게시글 전체 가져오는 메소드 호출! 전체 = 어레이리스트
		HashMap<String, Object> map = boardService.selectAll(page); // 리턴타입 메소드명
		model.addAttribute("list", map.get("list"));
		model.addAttribute("page", map.get("page"));
		model.addAttribute("listCount", map.get("listCount"));
		model.addAttribute("startPage", map.get("startPage"));
		model.addAttribute("endPage", map.get("endPage"));
		model.addAttribute("maxPage", map.get("maxPage"));

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
	public String doBoardWrite(BoardDto bdto, @RequestPart MultipartFile file, Model model) throws Exception {

		// 게시글 저장하는 메소드 호출
		String fileName = "";
		if (!file.isEmpty()) { // 파일 있는지?(null과 다름!)

			String ori_fileName = file.getOriginalFilename();// 실제 파일 이름
			UUID uuid = UUID.randomUUID();// 랜덤 16자리 숫자 생성
			fileName = uuid + "_" + ori_fileName;// 변경 파일 이름(중복방지)
			String uploadurl = "c:/upload/";// 파일 업로드 위치
			File f = new File(uploadurl + fileName);
			file.transferTo(f);// 파일 저장
		}
		System.out.println("doBoardWrite bfile: " + fileName);
		bdto.setBfile(fileName);// bfile 변수에 파일이름 저장
		boardService.insertOne(bdto);

		return "redirect:boardList";
	}
	

	@GetMapping("/board/boardDelete")
	public String boardDelete(int bno) {
		System.out.println("boardDelte: " + bno);
		boardService.deleteOne(bno);
		return "redirect:boardList";
	}
	

	@GetMapping("/board/boardUpdate") // boardUpdate view
	public String boardUpdate(int bno, Model model) {
		System.out.println("boardUpdate: " + bno);
		BoardDto bdto = boardService.selectOne(bno);
		model.addAttribute("bdto", bdto);
		return "board/boardUpdate";
	}


	@PostMapping("/board/boardUpdate") // boardUpdate 저장
	public String doBoardUpdate(BoardDto bdto, @RequestPart MultipartFile file, Model model) throws Exception {

		// 게시글 1개 수정
		System.out.println("doBoardUpdate bdto : " + bdto.getBno());
		System.out.println("doBoardUpdate bdto : " + bdto.getBfile());
		System.out.println("doBoardUpdate file : " + file.getOriginalFilename());

		String fileName = "";
		
		//파일이 있을경우 파일저장
		if(!file.isEmpty()) {
			String ori_fileName = file.getOriginalFilename(); //실제파일이름
			UUID uuid = UUID.randomUUID(); //랜덤숫자생성
			fileName = uuid+"_"+ori_fileName;  //변경파일이름 - 중복방지
			String uploadUrl = "c:/upload/"; //파일업로드 위치
			File f = new File(uploadUrl+fileName);
			file.transferTo(f); //파일저장
			bdto.setBfile(fileName);
		}
		
		boardService.updateOne(bdto);
		return "redirect:boardList";
	}
	
	
	@GetMapping("/board/boardReply") // boardReply view
	public String boardReply(int bno, Model model) {
		System.out.println("boardReply: " + bno);
		BoardDto bdto = boardService.selectOne(bno); // 1개 가져오기
		model.addAttribute("bdto", bdto);
		return "board/boardReply";
	}
	
	
	@PostMapping("/board/boardReply") // boardReply 저장
	public String doBoardReply(BoardDto bdto, @RequestPart MultipartFile file, Model model) throws Exception {
		
		// 게시글 저장하는 메소드 호출
		String fileName = "";
		if (!file.isEmpty()) { // 파일 있는지?(null과 다름!)

			String ori_fileName = file.getOriginalFilename();// 실제 파일 이름
			UUID uuid = UUID.randomUUID();// 랜덤 16자리 숫자 생성
			fileName = uuid + "_" + ori_fileName;// 변경 파일 이름(중복방지)
			String uploadurl = "c:/upload/";// 파일 업로드 위치
			File f = new File(uploadurl + fileName);
			file.transferTo(f);// 파일 저장
		}
		System.out.println("doBoardWrite bfile: " + fileName);
		bdto.setBfile(fileName);// bfile 변수에 파일이름 저장
		System.out.println("doBoardWrite bgroup: " + bdto.getBgroup());
		boardService.insertReplyOne(bdto);
		return "redirect:boardList";
	}// 답변달기 저장

}
