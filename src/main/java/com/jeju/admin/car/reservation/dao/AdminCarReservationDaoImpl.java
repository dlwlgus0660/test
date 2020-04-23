package com.jeju.admin.car.reservation.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.jeju.admin.car.reservation.vo.AdminCarReservationVO;

public class AdminCarReservationDaoImpl implements AdminCarReservationDao {

	@Autowired
	private SqlSession session;
	
	//회원 예약 리스트 구현
	@Override
	public List<AdminCarReservationVO> carResList() {
		
		return session.selectList("carResList");
	}
	
	
}
