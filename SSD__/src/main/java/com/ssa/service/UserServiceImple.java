package com.ssa.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssa.domain.Arduino;
import com.ssa.domain.Shoulder;
import com.ssa.domain.UserVO;
import com.ssa.domain.UserVO2;
import com.ssa.mapper.UserMapper;

@Service
public class UserServiceImple implements UserService {

	@Autowired
	private UserMapper mapper;

	// 로그인 매퍼로 접근
	@Override
	public UserVO UserLogin(UserVO vo) {
		UserVO uvo = mapper.UserLogin(vo);

		return uvo;
	}

	// 회원가입 매퍼로 접근
	@Override
	public void UserJoin(UserVO vo) {
		mapper.UserJoin(vo);

	}

	// 아이디 중복체크 매퍼 접근
	@Override
	public int idCheck(String id) {
		int cnt = mapper.idCheck(id);
		System.out.println("cnt: " + cnt);
		return cnt;
	}

	@Override
	public void change_info(UserVO2 vo) {
		mapper.change_info(vo);

	}

	// 대원리스트 조회
	@Override
	public ArrayList<UserVO> UserList() {
		ArrayList<UserVO> list = mapper.UserList();
		System.out.println("Service : " + list);
		return list;
	}

	// 상태확인 조회
	@Override
	public ArrayList<UserVO> statelist() {
		ArrayList<UserVO> list = mapper.statelist();
		System.out.println("Service : " + list);
		return list;
	}

	@Override
	public ArrayList<UserVO> UserTeamState(int user_team) {
		ArrayList<UserVO> list = mapper.UserTeamState(user_team);
		return list;
	}

	@Override
	public ArrayList<Shoulder> UserTempState(String user_id) {
		ArrayList<Shoulder> list = mapper.UserTempState(user_id);
		return list;
	}

	@Override
	public ArrayList<UserVO> UserTeamList1() {
		ArrayList<UserVO> list = mapper.UserTeamList1();
		return list;
	}

	@Override
	public ArrayList<UserVO> UserTeamList2() {
		ArrayList<UserVO> list = mapper.UserTeamList2();
		return list;
	}

	@Override
	public ArrayList<UserVO> UserTeamList3() {
		ArrayList<UserVO> list = mapper.UserTeamList3();
		return list;
	}
	
	@Override
	public ArrayList<UserVO> UserTeamList4() {
		ArrayList<UserVO> list = mapper.UserTeamList4();
		return list;
	}

	// 유저 조회
	@Override
	public ArrayList<UserVO> UserListId(String user_id) {
		ArrayList<UserVO> list = mapper.UserListId(user_id);
		System.out.println("Service : " + list);
		return list;
	}
	
	 // 유저 아이디 조회
    @Override
    public UserVO UserListIdCheck(String user_id) {
       UserVO list = mapper.UserListIdCheck(user_id);
       System.out.println("Service : " + list);
       return list;
    }

	// 팀 조회
	@Override
	public ArrayList<UserVO> UserTeamList(int user_team) {
		ArrayList<UserVO> list = mapper.UserTeamList(user_team);
		System.out.println("Service : " + list);
		return list;
	}

	@Override
	public int UserTeamCount1() {
		int teamCnt = mapper.UserTeamCount1();
		System.out.println("Service : " + teamCnt);
		return teamCnt;
	}

	@Override
	public int UserTeamCount2() {
		int teamCnt = mapper.UserTeamCount2();
		System.out.println("Service : " + teamCnt);
		return teamCnt;
	}

	@Override
	public int UserTeamCount3() {
		int teamCnt = mapper.UserTeamCount3();
		System.out.println("Service : " + teamCnt);
		return teamCnt;
	}
	@Override
	public int UserTeamCount4() {
		int teamCnt = mapper.UserTeamCount4();
		System.out.println("Service : " + teamCnt);
		return teamCnt;
	}

	@Override
	public ArrayList<Shoulder> UserTemp(String user_id) {
		ArrayList<Shoulder> list = mapper.UserTemp(user_id);
		return list;
	}
	
	@Override
	public ArrayList<Shoulder> UserGyro(String user_id) {
		ArrayList<Shoulder> list = mapper.UserGyro(user_id);
		return list;
	}
	
	// 근태 업데이트
		@Override
		public void ChangeState(String user_id, String user_state) {
			mapper.ChangeState(user_id, user_state);
		}
		
	@Override
	public void UpdateBeacon(String user_id, String beacon) {
		
		mapper.UpdateBeacon(user_id, beacon);
	}
	
//	@Override
//	public ArrayList<Arduino> ArduinoData(String user_id){
//		ArrayList<Arduino> list = mapper.ArduinoData(user_id);
//		System.out.println("Service : " + list);
//		return list;
//	}
	@Override
	public void ArduinoUpdate(String user_id, String data_o2, String data_pulse) {
		
		mapper.ArduinoUpdate(user_id, data_o2, data_pulse);
		
	}
	
	
	
	
	
}