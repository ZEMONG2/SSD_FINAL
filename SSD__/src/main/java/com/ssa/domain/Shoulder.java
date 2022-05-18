package com.ssa.domain;

import lombok.Data;

@Data
public class Shoulder {
	
	private String user_id;	// 유저 아이디
	private int temp;		// 온도
	private int gyro;		// 자이로
	private String reg_date;// 등록 날짜
	private int s_seq;		// 번호
	

}
