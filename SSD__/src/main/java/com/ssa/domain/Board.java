package com.ssa.domain;

import lombok.Data;

@Data
public class Board {
	
	
	private int idx;		//번호
	private String title;	//제목
	private String content;	//내용
	private String user_name;	//작성자
	private String indate;	//작성일
	private int count;		//조회수

}
