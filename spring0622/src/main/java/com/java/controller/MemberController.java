package com.java.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.java.dto.MemberDto;

@Controller
@RequestMapping("/member")// /member 이하 url 모두	
public class MemberController {
	
	@RequestMapping("/member1")// 이런 url 받으면
	public String member1() {
		return "member/member1";// /WEB-INF/member/member1.jsp 로 보내기
	}
	
	
	@RequestMapping("/login")// 이런 url 받으면
	public String login() {
		return "member/login";// /WEB-INF/member/login.jsp 로 보내기
	}
	
	@RequestMapping("/doLogin")// 이런 url 받으면
	public String doLogin(@RequestParam(required = false, defaultValue = "DEFAULT") String id, String pw, Model model) {
										// Null값 허용, 기본값 설정
		model.addAttribute("id",id);
		model.addAttribute("pw",pw);
		
		return "member/doLogin";// /WEB-INF/member/doLogin.jsp 로 보내기
	}
	
	@RequestMapping("/memberForm")// 이런 url 받으면
	public String memberForm() {
		return "member/memberForm";// /WEB-INF/member/memberForm.jsp 로 보내기
	}
	
	@RequestMapping("/doMemberForm")// 이런 url 받으면
	public String doMemberForm(MemberDto mdto, Model model, HttpServletRequest request) {// 데이터 이름이 같으면 mdto로 받아 model에 담아 보냄
		model.addAttribute("mdto", mdto);
		
		//int bno = Integer.parseInt(request.getParameter("bno"));// 객체로 받으면 형변환도 필요없음!!!
		/*
		 * String id = request.getParameter("id"); String pw =
		 * request.getParameter("pw"); String name = request.getParameter("name");
		 * String gender = request.getParameter("gender");
		 */
		
		/*
		 * model.addAttribute("id",id); model.addAttribute("pw",pw);
		 * model.addAttribute("name",name); model.addAttribute("gender",gender);
		 */
		
		return "member/doMemberForm";// /WEB-INF/member/domemberForm.jsp 로 보내기
	}
	
	@RequestMapping("/mForm")// 이런 url 받으면
	public String mForm() {
		return "member/mForm";// /WEB-INF/member/mForm.jsp 로 보내기
	}
	
	@RequestMapping("/doMForm")// 이런 url 받으면
	public String doMForm(MemberDto mdto, String[] hobbys, Model model) {
		String hobby="";
		for (int i=0; i<hobbys.length; i++) {
			if (i==0) hobby += hobbys[i]; // game
			else hobby += ", " + hobbys[i]; // game, golf, run
		}
		System.out.println("hobby: " + hobby);
		mdto.setHobby(hobby);// mdto 객체에 저장 
		
		model.addAttribute("mdto", mdto); // model에 객체 저장
		
		return "member/doMForm";// /WEB-INF/member/doMForm.jsp 로 보내기
	}
	
	@RequestMapping("/updateMForm")// 이런 url 받으면
	public String updateMForm(MemberDto mdto, Model model) {
		model.addAttribute("mdto",mdto);
		return "member/updateMForm";// /WEB-INF/member/updateMForm.jsp 로 보내기
	}
}
