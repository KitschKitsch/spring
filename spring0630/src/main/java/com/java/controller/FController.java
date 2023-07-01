package com.java.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.java.dto.BoardDto;

@Controller
public class FController {
	
	@RequestMapping("/index")
	public String index() {	return "index";	}
	
	@RequestMapping("/form1")
	public String form1() { return "form1";	}
	
	@RequestMapping("/doForm1")
	public String doForm1(BoardDto boardDto, @RequestPart MultipartFile file, Model model) throws Exception {
		
		// 파일저장소스 -start-
		String fileName="";
		if (!file.isEmpty()) {// file 존재하면
			String ori_fileName = file.getOriginalFilename();// 원본파일이름
			UUID uuid = UUID.randomUUID();// 16자리 난수생성(중복방지)
			fileName = uuid +"_"+ ori_fileName;// 16자리난수_원본파일이름
			String uploadUrl = "c:/upload/";
			File f = new File(uploadUrl + fileName); // 임시파일등록
			file.transferTo(f); // 파일저장
		} // 파일저장소스 -end-
		
		System.out.println("FController btitle: " + boardDto.getBtitle());
		System.out.println("FController fileName: " + fileName);
		model.addAttribute("btitle", boardDto.getBtitle());// model에 실어서
		model.addAttribute("fileName", fileName);
		
		return "fileCheck"; // 여기로 보냄
	}
	
	
	@RequestMapping("/form2")
	public String form2() {	return "form2";	}
	
	@RequestMapping("/doForm2")
	public String doForm2(BoardDto boardDto, List<MultipartFile> files, Model model) throws Exception{
		
		String fNames="";
		int i=0;
		for (MultipartFile file: files) { // 파일 갯수만큼 반복
		
			// 파일저장소스 -start-
			String fileName="";
			String ori_fileName = file.getOriginalFilename();
			
			if(i==0) fNames += ori_fileName; // 1.jpg
			else fNames += ", " + ori_fileName; // 1.jpg, 2.jpg, 3.jpg

			UUID uuid = UUID.randomUUID();
			fileName = uuid +"_"+ ori_fileName;
			String uploadUrl = "c:/upload/";
			File f = new File(uploadUrl + fileName); // 임시파일등록
			file.transferTo(f); // 파일저장
			i++;
		} // 파일저장소스 -end-
		
		String[] splitNames = fNames.split(", "); // 1.jpg | 2.jpg | 3.jpg
		boardDto.setBfile(fNames); // 1.jpg, 2.jpg, 3.jpg (한줄로)
		boardDto.setBfiles(splitNames); // 1.jpg | 2.jpg | 3.jpg (배열로)
		model.addAttribute("bdto", boardDto); 
		
		return "fileCheck2";
	}
	
	@RequestMapping("/form3")
	public String form3() {	return "form3";	}
	
}
