package com.java.service;

import org.springframework.stereotype.Service;

@Service // 어노테이션 있는 클래스 = @Autowired 만나면 객체선언 X
public class BServiceImpl implements BSerivice {// BSerivice 인터페이스를 상속받는 클래스

	@Override
	public int add() {
		return 5+10;
	}

}
