package com.jeju.admin.member.reservation.service;

import java.util.List;

import com.jeju.admin.member.reservation.vo.AdminMemberReservationVO;

public interface AdminMemberReservationService {
		
	public List<AdminMemberReservationVO> memResList();
	
	public AdminMemberReservationVO memResDetail(int rsv_number);
}
