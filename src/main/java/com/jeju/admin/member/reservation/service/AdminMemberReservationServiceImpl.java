package com.jeju.admin.member.reservation.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeju.admin.member.reservation.dao.AdminMemberReservationDao;
import com.jeju.admin.member.reservation.vo.AdminMemberReservationVO;

@Service
@Transactional
public class AdminMemberReservationServiceImpl implements AdminMemberReservationService {

	@Autowired
	private AdminMemberReservationDao adminMemberReservationDao;
	
	@Override
	public List<AdminMemberReservationVO> memResList(){
		return adminMemberReservationDao.memResList();
	}
	
	@Override
	public AdminMemberReservationVO memResDetail(int rsv_number) {
		return adminMemberReservationDao.memResDetail(rsv_number);
	}

}
