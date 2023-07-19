package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.CommentDto;
import com.java.dto.MadangDto;
import com.java.dto.PageDto;

@Mapper
public interface FreeMapper {
	
	// 게시글 전체 가져오기
	ArrayList<MadangDto> selectAll(PageDto pageDto);
	// 게시글 전체 개수
	int selectListCount(String s_opt, String s_word);
	
	// 게시글 1개 가져오기
	MadangDto selectOne(int bno);
	// 이전글 가져오기
	MadangDto selectPrevOne(int bno);
	// 다음글 가져오기
	MadangDto selectNextOne(int bno);
	
	// 댓글 가져오기
	ArrayList<CommentDto> selectComAll(int bno);

}
