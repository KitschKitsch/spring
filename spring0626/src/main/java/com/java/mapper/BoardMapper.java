package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.BoardDto;

@Mapper
public interface BoardMapper {
	
	// 게시글 전체 개수
	int selectListCount(String category, String s_word);
	// 게시글 전체 가져오기
	ArrayList<BoardDto> selectAll(int startRow, int endRow, String category, String s_word); // 리턴타입 메소드명
	
	// 게시글 1개 가져오기
	BoardDto selectOne(int bno);
	// 이전글 가져오기
	BoardDto selectPrevOne(int bno);
	// 다음글 가져오기
	BoardDto selectNextOne(int bno);
	// 조회수 1증가
	void updateBhitUp(int bno);
	
	// 게시글 저장하기
	void insertOne(BoardDto bdto);

	// 게시글 1개 삭제하기
	void deleteOne(int bno);
	
	// 게시글 1개 수정하기
	void updateOne(BoardDto bdto);
	
	// 자손 수 증가
	void updateBstepCount(BoardDto bdto);
	// 답변달기
	void insertReplyOne(BoardDto bdto);
	
	
	


}
