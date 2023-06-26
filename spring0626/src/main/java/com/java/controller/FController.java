package com.java.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dto.MemberDto;
import com.java.service.MemberService;

@Controller
public class FController {
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	HttpSession session;
	
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	
	// 로그인
	@RequestMapping("/login")// 주소 받으면
	public String login() {
		return "login";// 여기로 보내기
	}
	
	
	// 로그인 확인
	@RequestMapping("/doLogin")
	public String doLogin(String id, String pw, Model model) {// id, pw 어짜피 mdto에 있으니까 MemberDto mdto 써도 무방!
		
		System.out.println("controller id:"+id);
		System.out.println("controller pw:"+pw);
		
		MemberDto memberDto = memberService.selectLogin(id, pw);// id,pw 회원검색해서 memberDto 객체로 받음
		
		if (memberDto!=null) { // 데이터 있으면
			model.addAttribute("l_Result", 1); // 성공: 1
			session.setAttribute("sessionId", memberDto.getId());
			session.setAttribute("sessionName", memberDto.getName());
		} else {
			model.addAttribute("l_Result", 0); // 실패: 0
		}	
		return "loginCheck";
	}// doLogin
	
	
	// 로그아웃
	@RequestMapping("/logout")// 주소 받으면
	public String logout() {
		return "logout";// 여기로 보내기
	}// logout
	
	
}
