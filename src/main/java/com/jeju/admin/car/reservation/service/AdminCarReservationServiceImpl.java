package com.jeju.admin.car.reservation.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeju.admin.car.reservation.dao.AdminCarReservationDao;
import com.jeju.admin.car.reservation.vo.AdminCarReservationVO;

@Service
@Transactional
public class AdminCarReservationServiceImpl implements AdminCarReservationService {
	
	@Autowired
	private AdminCarReservationDao adminCarReservationDao;
	
	@Override
	public List<AdminCarReservationVO> carResList(){
		return adminCarReservationDao.carResList();
	}
	
}
