package com.java.service;

import java.util.ArrayList;

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
	public ArrayList<MadangDto> selectAll() {
		ArrayList<MadangDto> list = freeMapper.selectAll();
		
		return list;
	}
	
	// 게시글 1개 가져오기
	@Override
	public MadangDto selectOne(int bno) {
		MadangDto mdto = freeMapper.selectOne(bno);
		
		return mdto;
	}
	
	// 댓글 가져오기
	@Override
	public ArrayList<CommentDto> selectComAll(int bno) {
		ArrayList<CommentDto> list = freeMapper.selectComAll(bno);
		
		return list;
	}

}
