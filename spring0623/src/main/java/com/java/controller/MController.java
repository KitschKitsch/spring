package com.java.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dto.MemberDto;
import com.java.service.MemberService;

@Controller
public class MController {
	
	@Autowired
	MemberService memberService; // 자동 객체선언으로 참조변수만 사용!(DI)
	
	
	
	@RequestMapping("/member/memberList") // 주소 받으면
	public String memberList(Model model) {
		// 회원 전체 가져오기
		ArrayList<MemberDto> list = memberService.memberSelectAll();
		model.addAttribute("list", list);
		System.out.println("MController list: " + list);
		
		return "member/memberList"; // webapp/WEB-INF/views/ 파일 열기
	}
	
	
	
	@RequestMapping("/member/memberView") // 주소 받으면
	public String memberView(String id, Model model) {
		System.out.println("MController id: " + id);// url의 파라미터로 받은 id
		// 회원 1명 가져오기
		MemberDto member = memberService.memberSelectOne(id);
		model.addAttribute("member", member);
		
		return "member/memberView"; // webapp/WEB-INF/views/ 파일 열기
	}
	
	

	

}
