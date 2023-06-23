package com.java.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FController {
	
	@Autowired // 객체선언 안해도됨!
	HttpSession session;
	
	@RequestMapping("/index") // 이런 주소 받으면
	public String index() {
		return "index"; // 여기 파일로 이동
	}
	
	@RequestMapping("/login") // 이런 주소 받으면
	public String login() {
		return "login"; // 여기 파일로 이동
	}
	
	@RequestMapping("/doLogin") // 이런 주소 받으면
	public String doLogin(String id, String pw, Model model) {
		System.out.println("id: " + id);
		System.out.println("pw: " + pw);
		
		// 원래는 DB검색(id, pw 일치여부) 후
		if(id.equals("admin") && pw.equals("1111")) {
			// session 설정: request 매개변수로 받고 session 객체선언해야함 
				// HttpServletRequest request; 
				// HttpSession session = request.getSession();// 원래는 세션 객체 선언 필요!!!
			session.setAttribute("sessionId", id);
			model.addAttribute("loginCheck", 1);
		} else {
			model.addAttribute("loginCheck", 0);
		}
		return "loginCheck"; // 여기 파일로 이동
	}
	
	@RequestMapping("/logout") // 이런 주소 받으면
	public String logout(Model model) {
		session.invalidate();// 세션 전체 삭제
		model.addAttribute("logout", 1);
		return "logoutCheck"; // 여기 파일로 이동
	}
}
