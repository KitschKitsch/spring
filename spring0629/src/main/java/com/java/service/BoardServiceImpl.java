package com.java.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.BoardDto;
import com.java.dto.CommentDto;
import com.java.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired BoardMapper boardMapper;
	
	@Override
	public HashMap<String, Object> selectAll(int page, String category, String s_word) {
		// 먼저 빈 공간 선언
		HashMap<String, Object> map = new HashMap<>();
		
		// 게시글 전체 개수
		int listCount = boardMapper.selectListCount(category, s_word); // 먼저 게시글 전체 개수 DB에 물어봐야함
		// 최대,시작,종료 페이지
		int maxPage = (int)Math.ceil((double)listCount/10); // 한 페이지 당 10개씩 = 4페이지
		int startPage = (int)((page-1)/10) *10+1; // 1,11,21...
		int endPage = startPage+10-1; // 10,20,30...
		// 전체 페이지 수 최대 페이지 수로 제한
		if (endPage > maxPage) endPage = maxPage;

		// 페이지 당 보여질 게시글 수
		int startRow = (page-1)*10+1; // 1p: 1~10행 2p:11~20행
		int endRow = startRow+10-1; // 1p: 1~10행 2p:11~20행
		
		ArrayList<BoardDto> list = boardMapper.selectAll(startRow, endRow, category, s_word);
		
		map.put("list", list);
		map.put("page", page);
		map.put("listCount", listCount);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("maxPage", maxPage);
		map.put("category", category);
		map.put("s_word", s_word);
		
		return map;
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
