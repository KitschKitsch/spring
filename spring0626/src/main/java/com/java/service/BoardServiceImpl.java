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
	public HashMap<String, Object> selectAll(int page, String category, String s_word) { // 리턴타입-HashMap 메소드명-selectAll(page)
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
		
		// 게시글 전체 가져오기(여러개=어레이리스트)
		ArrayList<BoardDto> list = boardMapper.selectAll(startRow, endRow, category, s_word); // 게시글 전체도 DB에서 가져와야함
		
		map.put("list", list);
		map.put("page", page);
		map.put("listCount", listCount);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("maxPage", maxPage);
		map.put("category", category);
		map.put("s_word", s_word);
		
		return map; // 리스트와 페이지 값 담긴 map 반환
	}// selectAll

	
	@Override
	public HashMap<String, Object> selectOne(int bno) {
		
		HashMap<String, Object> map = new HashMap<>();
		// 게시글 1개 가져오기
		BoardDto bdto = boardMapper.selectOne(bno);
		// 이전글 가져오기
		BoardDto prevDto = boardMapper.selectPrevOne(bno);
		// 다음글 가져오기
		BoardDto nextDto = boardMapper.selectNextOne(bno);
		// 조회수 1 증가
		boardMapper.updateBhitUp(bno);
		
		map.put("bdto", bdto);
		map.put("prevDto", prevDto);
		map.put("nextDto", nextDto);
		
		return map;
	}// selectOne

	
	@Override
	public void insertOne(BoardDto bdto) {
		// 게시글 저장하기
		boardMapper.insertOne(bdto);
	}// insertOne

	
	@Override
	public void deleteOne(int bno) {
		// 게시글 1개 삭제하기
		boardMapper.deleteOne(bno);
	}// deleteOne
	

	@Override
	public void updateOne(BoardDto bdto) {
		// 게시글 1개 수정하기
		boardMapper.updateOne(bdto);
	}// updateOne

	
	@Override
	public void insertReplyOne(BoardDto bdto) {
		// 답변달기
		System.out.println("service insertReplyOne bgroup: " + bdto.getBgroup());
		boardMapper.updateBstepCount(bdto); // 먼저 등록한 자손이 1씩 증가하면서 뒤로 밀림(최신순)
		boardMapper.insertReplyOne(bdto);
	}

}
