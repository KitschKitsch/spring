package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.CommentDto;
import com.java.dto.MadangDto;
import com.java.dto.PageDto;

@Mapper
public interface FreeMapper {
	
	// 일반회원 게시글 전체
	ArrayList<MadangDto> selectAll(PageDto pageDto);
	// 관리자 공지글 전체
	ArrayList<MadangDto> selectNoticeAll(PageDto pageDto);
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
	
	// 게시글 저장하기
	void insertOne(MadangDto mdto);
	
	// 댓글 저장하기
	void insertComOne(CommentDto aCdto);
	// 댓글 1개 가져오기
	CommentDto selectComOne(CommentDto aCdto);
	
	// 댓글 1개 삭제하기
	void deleteOne(int cno);
	

}
