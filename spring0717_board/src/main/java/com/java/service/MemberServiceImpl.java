package com.java.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.MemberDto;
import com.java.mapper.MemberMapper;

@Service // 과거엔 @component
public class MemberServiceImpl implements MemberService {
	
	@Autowired MemberMapper memberMapper;
	@Autowired HttpSession session;
	
	// 회원 로그인
	@Override
	public String selectOne(String id, String pw) {
		String resultCode = "";
		MemberDto mdto = memberMapper.selectOne(id, pw);
		
		if (mdto!=null) {
			session.setAttribute("sessionId", mdto.getId());
			session.setAttribute("sessionName", mdto.getName());
			resultCode = "success login";
		} else {
			resultCode = "fail login";
		}

		return resultCode;
	}

}
