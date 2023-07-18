package com.java.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class MadangDto {
	
	private int board_no;
	private String auth_id;
	private String auth_nickname;
	private String board_category;
	private String board_title;
	private String board_contents;
	private Timestamp board_created;
	private Timestamp board_modified;
	private String board_file;
	private int board_view;
	private int board_like;
	
}
