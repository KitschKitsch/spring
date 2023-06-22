package com.java.service;

import org.springframework.stereotype.Service;

@Service
public class BServiceImpl implements BSerivice {// BSerivice 인터페이스를 상속받는 클래스

	@Override
	public int add() {
		return 5+10;
	}

}
