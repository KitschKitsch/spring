package com.java.contorller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dto.MemberDto;
import com.java.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired MemberService memberService;
	@Autowired HttpSession session; // 세션
	
	
	@GetMapping("/member/login")
	public String login() {
		return "member/login";
	}
	
	@PostMapping("/member/login")
	public String login(String id, String pw, Model model) {
		System.out.println(id); // DTO 객체로 받는게 더 GOOD (에러방지)
		System.out.println(pw);
		
		// 회원 1명 가져오기(로그인)
		String resultCode = memberService.selectOne(id, pw);
		if (resultCode.equals("success login")) {
			return "redirect:/?resultCode=" + resultCode; // index 페이지로
		} else {
			model.addAttribute("resultCode", resultCode); // fail login
			System.out.println("controller resultCode: " + resultCode);
		}
		
		return "member/login"; 
	}
	
	@GetMapping("/member/join01")
	public String join01() {
		return "member/join01";
	}
	
	@GetMapping("/member/join02_info")
	public String join02_info() {
		return "member/join02_info";
	}

}
