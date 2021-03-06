package com.ssa.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.ssa.domain.Board;
import com.ssa.domain.Shoulder;
import com.ssa.domain.UserVO;
import com.ssa.domain.UserVO2;


@Mapper
public interface UserMapper {

	//로그인
	public UserVO UserLogin(UserVO vo);
	
	//회원가입
	public void UserJoin(UserVO vo);
	
	// 아이디 중복체크
	public int idCheck(String id);
	
	//회원정보 수정
	public void change_info(UserVO2 vo);
	
	// 대원리스트
	public ArrayList<UserVO> UserList();
	
	// 상태확인
	public ArrayList<UserVO> statelist();

	public ArrayList<Board> boardListCheck();
	
	//팀 리스트 
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
	
	public ArrayList<UserVO> UserListId(String user_id);
	public UserVO UserListIdCheck(String user_id);
	
	public ArrayList<UserVO> UserTeamList(int user_team);
	public ArrayList<Shoulder> UserTemp(String user_id);
	// 자이로 값 가져오기
	public ArrayList<Shoulder> UserGyro(String user_id);
	
	public void ChangeState(String user_id, String user_state);
	
	public void UpdateBeacon(String user_id, String beacon);
	
	public void ArduinoUpdate(String user_id,  String data_o2, String data_pulse);
	

}
