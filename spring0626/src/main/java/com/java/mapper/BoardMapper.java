package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.BoardDto;

@Mapper
public interface BoardMapper {
	
	// 게시글 전체 가져오기
	ArrayList<BoardDto> selectAll(); // 리턴타입 메소드명
	
	// 게시글 1개 가져오기
	BoardDto selectOne(int bno);
	
	// 게시글 저장하기
	void insertOne(BoardDto bdto);

}
