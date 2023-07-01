package com.java.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.BoardDto;
import com.java.dto.CommentDto;
import com.java.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired BoardMapper boardMapper;
	
	@Override
	public ArrayList<BoardDto> selectAll() {
		// 게시글 전체 가져오기(여러개=어레이리스트)
		ArrayList<BoardDto> list =  boardMapper.selectAll();
		
		return list;
	}

	@Override
	public BoardDto selectOne(int bno) {
		// 게시글 1개 가져오기(1개=객체)
		BoardDto bdto =  boardMapper.selectOne(bno);
		
		return bdto;
	}

	@Override
	public ArrayList<CommentDto> selectComAll(int bno) {
		// 하단 댓글 전체 가져오기(여러개=어레이리스트)
		ArrayList<CommentDto> comList = boardMapper.selectComAll(bno);
		
		return comList;
	}

	@Override
	public CommentDto commentInsert(CommentDto comDto) {
		// 하단 댓글 저장
		boardMapper.commentInsert(comDto);// 시퀀스 cno 담김
	
		System.out.println("commentInsert cno: " + comDto.getCno()); // O
		System.out.println("commentInsert cdate: " + comDto.getCdate()); // 아직 값 없음
		
		// 하단 댓글 1개 가져오기
		CommentDto cdto = boardMapper.selectComOne(comDto);
		
		System.out.println("selectComOne cno: " + cdto.getCno()); // O
		System.out.println("selectComOne cdate: " + cdto.getCdate()); // O
		
		return cdto;
	}

}
