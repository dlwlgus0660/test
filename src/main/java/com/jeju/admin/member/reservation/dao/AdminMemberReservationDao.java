package com.jeju.admin.member.reservation.dao;

import java.util.List;

import com.jeju.admin.member.reservation.vo.AdminMemberReservationVO;

public interface AdminMemberReservationDao {
	public List<AdminMemberReservationVO> memResList();
	
	public AdminMemberReservationVO memResDetail(int rsv_number);
}
