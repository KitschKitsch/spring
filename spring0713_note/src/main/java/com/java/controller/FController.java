package com.java.controller;

import java.io.File;
import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class FController {
	
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/boardWrite")
	public String boardWrite() {
		return "boardWrite";
	}
	
	@RequestMapping("/boardList")
	public String boardList() {
		return "boardList";
	}

	@PostMapping("/uploadSummernoteImageFile")
	@ResponseBody // ajax에는 필수!!!!!!!!!!
	public String uploadSummernoteImageFile(@RequestPart MultipartFile file) throws Exception {
		
		String urlName = "";
		if (!file.isEmpty()) {
			UUID uuid = UUID.randomUUID();
			String fileName = uuid + "_" + file.getOriginalFilename();
			String fileUrl = "c:/upload/";
			File f = new File(fileUrl+fileName);
			file.transferTo(f);// 파일 서버로 저장됨 (try-catch 필수! 아니면 thorws하거나~)
			
			urlName = "/upload/" + fileName;
			
			System.out.println("controller filename: " + urlName);
		}
		
		return urlName;
	}
}
