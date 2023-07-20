package com.java.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.java.dto.CommentDto;
import com.java.dto.MadangDto;
import com.java.dto.PageDto;
import com.java.mapper.FreeMapper;

@Service
public class FreeServiceImpl implements FreeService {

	@Autowired
	FreeMapper freeMapper;

	// 게시글 전체 가져오기
	@Override
	public HashMap<String, Object> selectAll(PageDto pageDto, String s_opt, String s_word, String rowPP) {
		HashMap<String, Object> map = new HashMap<>();
		// 페이지 메소드
		pageDto = pageMethod(pageDto, s_opt, s_word, rowPP);

		// 일반회원 게시글 전체
		ArrayList<MadangDto> list = freeMapper.selectAll(pageDto);
		// 관리자 공지글 전체
		ArrayList<MadangDto> notice = freeMapper.selectNoticeAll(pageDto);

		map.put("list", list);
		map.put("notice", notice);
		map.put("pageDto", pageDto);
		map.put("s_opt", s_opt);
		map.put("s_word", s_word);

		return map;
	}

	public PageDto pageMethod(PageDto pageDto, String s_opt, String s_word, String rowPP) {
		// 전체게시글 수 저장
		pageDto.setListCount(freeMapper.selectListCount(s_opt, s_word));
		// 최대 넘버링페이지
		pageDto.setMaxPage((int) Math.ceil((double) pageDto.getListCount() / Integer.parseInt(rowPP)));
		// 시작 넘버링페이지
		pageDto.setStartPage((int) ((pageDto.getPage() - 1) / Integer.parseInt(rowPP)) * 10 + 1);
		// 끝 넘버링페이지
		pageDto.setEndPage(pageDto.getStartPage() + Integer.parseInt(rowPP) - 1);
		// 시작번호
		pageDto.setStartRow((pageDto.getPage() - 1) * Integer.parseInt(rowPP) + 1);
		// 끝나는번호
		pageDto.setEndRow(pageDto.getStartRow() + Integer.parseInt(rowPP) - 1);

		// ***검색 옵션과 검색어도 pageDto에 추가함!!!
		pageDto.setS_opt(s_opt);
		pageDto.setS_word(s_word);

		return pageDto;
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

	// 게시글 저장하기
	@Override
	public void insertOne(MadangDto mdto, List<MultipartFile> files) {

		String bfile = "";
		String tempFile = "";
		String oriFile = "";
		String[] bfiles = new String[3];

		for (int i = 0; i < files.size(); i++) {
			tempFile = "";
			if (!files.get(i).isEmpty()) {
				oriFile = files.get(i).getOriginalFilename();
				UUID uuid = UUID.randomUUID();
				tempFile = uuid + "_" + oriFile;
				String uploadURL = "c:/upload/";
				File f = new File(uploadURL + tempFile);
				try {
					files.get(i).transferTo(f);
				} catch (Exception e) {
					e.printStackTrace();
				}
			} // if
			// files 배열을 file 하나에 저장
			if (i == 0)
				bfile = tempFile;
			else
				bfile += "," + tempFile;

			mdto.setBoard_file(bfile);
		} // for
		
		freeMapper.insertOne(mdto);
	}
	
	// 댓글 저장하기 + 작성한 댓글 1개 가져오기
	@Override
	public CommentDto insertComOne(CommentDto aCdto) {
		// 댓글 저장하기
		freeMapper.insertComOne(aCdto);
		CommentDto cdto = freeMapper.selectComOne(aCdto);
		return cdto;
	}
	
	// 댓글 삭제하기
	@Override
	public void deleteOne(int cno) {
		freeMapper.deleteOne(cno);
		
	}

}
