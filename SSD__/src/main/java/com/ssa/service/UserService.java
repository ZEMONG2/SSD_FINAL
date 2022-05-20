package com.ssa.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.ssa.domain.Shoulder;
import com.ssa.domain.UserVO;
import com.ssa.domain.UserVO2;

@Service
public interface UserService {
	
	
	// 로그인
	public UserVO UserLogin(UserVO vo);

	// 회원가입
	public void UserJoin(UserVO vo);

	// 아이디 중복체크
	public int idCheck(String id);
	
	// 대원정보수정
	public void change_info(UserVO2 vo);
	
	// 대원리스트
	public ArrayList<UserVO> UserList();
	
	// 상태확인
	public ArrayList<UserVO> statelist();
	
	//근태업데이트
	public void ChangeState(String user_id, String user_state);

	
	public ArrayList<UserVO> UserTeamState(int user_team);
	public ArrayList<Shoulder> UserTempState(String user_id);
	
	public ArrayList<UserVO> UserTeamList1();
	public ArrayList<UserVO> UserTeamList2();
	public ArrayList<UserVO> UserTeamList3();
	public ArrayList<UserVO> UserTeamList4();
	
	public int UserTeamCount1();
	public int UserTeamCount2();
	public int UserTeamCount3();
	public int UserTeamCount4();
	   // 대원리스트(아이디별 체크)
	   public ArrayList<UserVO> UserListId(String user_id);
	   public UserVO UserListIdCheck(String user_id);
	   // 대원리스트(팀별 체크)
	   public ArrayList<UserVO> UserTeamList(int user_team);
	   // 대원 온도 체크(아이디별 체크)
	   public ArrayList<Shoulder> UserTemp(String user_id);
}