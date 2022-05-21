package com.ssa.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.ssa.domain.Shoulder;


@Mapper
public interface ShoulderMapper {
	
	
	// 사용자 이름
	@Select("select temp from tb_shoulder where user_id=#{user_id}")
	public Shoulder ShoulderData(String user_id);
	
	//자이로값
		//@Select("select gyro from tb_shoulder where user_id=#{user_id")
		//public Shoulder UserGyro(String user_id);

}
