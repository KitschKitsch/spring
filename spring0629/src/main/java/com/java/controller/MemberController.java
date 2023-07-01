package com.java.controller;

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
	@Autowired HttpSession session; // 기본 제공 세션 인터페이스
	
	@GetMapping("/member/login")
	public String login(String nowpage, Model model) {
		model.addAttribute("nowpage", nowpage);
		
		return "member/login";
	}
	
	@PostMapping("/member/login")
	public String login(MemberDto memberDto, Model model) {
		MemberDto mdto = memberService.selectLogin(memberDto);// 로그인 메소드 호출
		
		if(mdto != null) { // 로그인 결과가 있으면
			session.setAttribute("sessionId", mdto.getId());
			session.setAttribute("sessionName", mdto.getName());
		} else {
			model.addAttribute("loginCheck", "fail"); // loginCheck: fail
			return "/member/login";
		}
		
		return "redirect:/index?loginCheck=success";
	}
	
	@RequestMapping("/member/logout")
	public String logout() {
		session.invalidate();
		return "redirect:/index";
	}
}
