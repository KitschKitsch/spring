package com.java.service;

import java.util.ArrayList;

import com.java.dto.CommentDto;
import com.java.dto.MadangDto;

public interface FreeService {
	
	// 게시글 전체 가져오기
	ArrayList<MadangDto> selectAll();

	// 게시글 1개 가져오기
	MadangDto selectOne(int bno);
	
	// 댓글 가져오기
	ArrayList<CommentDto> selectComAll(int bno);

}
