package com.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.service.EmailService;

@Controller
public class EmailController {

	@Autowired EmailService emailService;
	
	@RequestMapping("/member/idsearch")
	public String idsearch() {
		return "member/idsearch";
	}

	@RequestMapping("/email/emailSend")
	@ResponseBody // ajax에 '데.이.터'로 리턴!!! == @RestController 
	public String emailSend(String name, String email) {
		System.out.println("name : " + name);
		System.out.println("email : " + email);

		// 임시비밀번호 코드 생성
		String pwCode = emailService.insertPwCode(name, email);
		
		return pwCode;
	}
	
}
