package com.jeju.admin.member.reservation.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jeju.admin.member.reservation.vo.AdminMemberReservationVO;

@Repository
public class AdminMemberReservationDaoImpl implements AdminMemberReservationDao {

	@Autowired
	private SqlSession session;
	
	//회원 예약 리스트 구현
	@Override
	public List<AdminMemberReservationVO> memResList() {
		
		return session.selectList("memResList");
	}
	
	@Override
	public AdminMemberReservationVO memResDetail(int rsv_number) {
		
		return session.selectOne("memResDetail", rsv_number);
	}

}
	

