package com.java.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.java.dto.CommentDto;
import com.java.dto.MadangDto;

public interface FreeService {
	
	// 게시글 전체 가져오기
	HashMap<String, Object> selectAll(int page, String s_opt, String s_word, int row);

	// 게시글 1개 가져오기
	HashMap<String, Object> selectOne(int bno);
	
	// 댓글 가져오기
	ArrayList<CommentDto> selectComAll(int bno);

}
