package com.ssa.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;

import com.ssa.domain.Board;

public interface BoardMapper {
	
	//전체 게시물 가져오기
	public ArrayList<Board> boardList();
	
	// 게시물 작성
	public void boardInsert(Board vo);
	
	//공지사항 타이틀 
	public Board boardTitle(int idx);
	
	// 특정 게시물 번호를 가진 게시물 정보 가져오기
	public Board boardContent(int idx);
	
	//특정 게시물 번호를 가진 게시물 삭제
	@Delete("delete from tb_table where idx=#{idx}")
	public void boardDelete(int idx);
	
	//특정 게시물 번호를 가진 게시물 수정
	public void boardUpdate(Board vo);

}
