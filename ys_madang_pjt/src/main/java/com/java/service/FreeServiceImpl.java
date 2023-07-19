package com.java.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.CommentDto;
import com.java.dto.MadangDto;
import com.java.mapper.FreeMapper;

@Service
public class FreeServiceImpl implements FreeService {
	
	@Autowired FreeMapper freeMapper;
	
	// 게시글 전체 가져오기
	@Override
	public HashMap<String, Object> selectAll(int page, String s_opt, String s_word, int row) {
		HashMap<String, Object> map = new HashMap<>();
		// 게시글 전체
		ArrayList<MadangDto> list = freeMapper.selectAll();
		
		// 페이지
		// 게시글 전체 개수
		int listCount = freeMapper.selectListCount(s_opt, s_word); // 먼저 게시글 전체 개수 DB에 물어봐야함
		// 최대,시작,종료 페이지
		int maxPage = (int) Math.ceil((double) listCount / 10); // 한 페이지 당 10개씩 = 4페이지
		int startPage = (int) ((page - 1) / 10) * 10 + 1; // 1,11,21...
		int endPage = startPage + 10 - 1; // 10,20,30...
		// 전체 페이지 수 최대 페이지 수로 제한
		if (endPage > maxPage)
			endPage = maxPage;
		// 페이지 당 보여질 게시글 수
		int startRow = (page - 1) * row + 1; // 1p: 1~10행 2p:11~20행
		int endRow = startRow + row - 1; // 1p: 1~10행 2p:11~20행
		
		map.put("list", list);
		map.put("page", page);
		map.put("listCount", listCount);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("maxPage", maxPage);
		map.put("s_opt", s_opt);
		map.put("s_word", s_word);
		
		return map;
	}
	
	// 게시글 1개 가져오기
	@Override
	public HashMap<String, Object> selectOne(int bno) {
		HashMap<String, Object> map = new HashMap<>();
		
		MadangDto mdto = freeMapper.selectOne(bno);
		MadangDto prevMdto = freeMapper.selectPrevOne(bno); // 이전글
		MadangDto nextMdto = freeMapper.selectNextOne(bno); // 다음글
		
		map.put("mdto", mdto);
		map.put("prevMdto", prevMdto);
		map.put("nextMdto", nextMdto);
		
		return map;
	}
	
	// 댓글 가져오기
	@Override
	public ArrayList<CommentDto> selectComAll(int bno) {
		ArrayList<CommentDto> list = freeMapper.selectComAll(bno);
		
		return list;
	}

}
