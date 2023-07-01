package com.java.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.java.dto.BoardDto;
import com.java.dto.CommentDto;

public interface BoardService {
	
	// 게시글 전체 가져오기
	HashMap<String, Object> selectAll(int page, String category, String s_word);

	// 게시글 1개 가져오기
	BoardDto selectOne(int bno);
	// 하단 댓글 전체 가져오기
	ArrayList<CommentDto> selectComAll(int bno);
	
	// 하단 댓글 저장 + 1개 가져오기
	CommentDto commentInsert(CommentDto comDto);

}
