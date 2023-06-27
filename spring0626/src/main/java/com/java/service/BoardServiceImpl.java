package com.java.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.java.dto.BoardDto;
import com.java.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	BoardMapper boardMapper; // 쿼리문 호출하는 객체(DB연결)
	
	@Override
	public HashMap<String, Object> selectAll(int page) { // 리턴타입 메소드명
		
		HashMap<String, Object> map = new HashMap<>();
		
		// 게시글 전체 개수
		int listCount = boardMapper.selectListCount();
		// 최대,시작,종료 페이지
		int maxPage = (int)Math.ceil((double)listCount/10); // 4개 페이지
		int startPage = (int)((page-1)/10)*10+1; // 1
		int endPage = startPage+10-1; // 10
		int startRow = (page-1)*10+1; // 1p: 1~10행 2p:11~20행
		int endRow = startRow+10-1; // 1p: 1~10행 2p:11~20행
		
		System.out.println("BoardServiceImpl page: " + page);
		System.out.println("BoardServiceImpl maxpage: " + maxPage);
		System.out.println("BoardServiceImpl startPage: " + startPage);
		System.out.println("BoardServiceImpl endPage: " + endPage);
		System.out.println("BoardServiceImpl startRow: " + startRow);
		System.out.println("BoardServiceImpl endRow: " + endRow);
		
		// 전체 페이지 수 최대 페이지 수로 제한
		if (endPage > maxPage)endPage = maxPage;

		// 게시글 전체 가져오기
		ArrayList<BoardDto> list = boardMapper.selectAll(startRow, endRow); // 리턴타입 메소드명
		
		map.put("list", list);
		map.put("listCount", listCount);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("page", page);
		
		return map;
	}

	@Override
	public BoardDto selectOne(int bno) {
		// 게시글 1개 가져오기
		BoardDto bdto = boardMapper.selectOne(bno);
		return bdto;
	}

	
	@Override
	public void insertOne(BoardDto bdto) {
		// 게시글 저장하기
		boardMapper.insertOne(bdto);
	}

	
	@Override
	public void deleteOne(int bno) {
		// 게시글 1개 삭제하기
		boardMapper.deleteOne(bno);
	}

	@Override
	public void updateOne(BoardDto bdto) {
		// 게시글 1개 수정하기
		boardMapper.updateOne(bdto);
	}

	
	@Override
	public void insertReplyOne(BoardDto bdto) {
		// 답변달기
		System.out.println("service insertReplyOne: " + bdto.getBgroup());
		boardMapper.updateBstepCount(bdto); // 먼저 등록한 자손이 1씩 증가하면서 뒤로 밀림(최신순)
		boardMapper.insertReplyOne(bdto);
	}

}
