package com.ssa.domain;

import lombok.Data;

@Data
public class UserVO2 {
	
	private String user_team; // 소속팀
	private String user_id; // 아이디
	private String user_pw;  // 현재비밀번호
	private String user_pwCheck1;  // 변경비밀번호
	private String user_pwCheck2;  // 변경비밀번호확인
	private String user_address; //주소
	private String user_address2; //상세주소
	
	
}



