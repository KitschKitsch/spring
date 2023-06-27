package com.java.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.java.dto.BoardDto;


public interface BoardService {
	
	// 게시글 전체 가져오기
	HashMap<String, Object> selectAll(int page); // 리턴타입-HashMap 메소드명-selectAll(page)

	// 게시글 1개 가져오기
	BoardDto selectOne(int bno);
	
	// 게시글 저장하기
	void insertOne(BoardDto bdto);
	
	// 게시글 1개 삭제하기
	void deleteOne(int bno);
	
	// 게시글 1개 수정하기
	void updateOne(BoardDto bdto);
	
	// 답변달기
	void insertReplyOne(BoardDto bdto);

}
