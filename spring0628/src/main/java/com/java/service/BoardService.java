package com.java.service;

import java.util.ArrayList;

import com.java.dto.BoardDto;

public interface BoardService {

	// 게시글 전체 가져오기
	ArrayList<BoardDto> selectBoardAll();
	
	// 게시글 1개 가져오기
	BoardDto selectBoardOne(int bno);

}