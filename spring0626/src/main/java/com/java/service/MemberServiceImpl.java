package com.java.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.MemberDto;
import com.java.mapper.MemberMapper;

@Service // IOC 컨테이너에 넣기!
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberMapper memberMapper;
	
	@Override
	public MemberDto selectLogin(String id, String pw) { // MemberDto mdto 써도 무방!
		
		System.out.println("service id: " + id);
		System.out.println("service pw: " + pw);

		// mapper 호출
		MemberDto memberDto = memberMapper.selectLogin(id, pw); // mdto 넣어도 무방!
				
		return memberDto;
	}

}
