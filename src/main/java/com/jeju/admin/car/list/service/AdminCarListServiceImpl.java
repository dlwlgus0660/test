package com.jeju.admin.car.list.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.jeju.admin.car.list.dao.AdminCarListDao;
import com.jeju.admin.car.list.vo.AdminCarListVO;

@Service
public class AdminCarListServiceImpl implements AdminCarListService {

	@Inject
	private AdminCarListDao adminCarListDao;

	// 차량 등록
	@Override
	public int listInsert(AdminCarListVO vo) {

		int result = 0;
		try {
			result = adminCarListDao.listInsert(vo);
		} catch (Exception e) {
			e.printStackTrace();
			result = 0;
		}
		return result;
	}

	// 차량 정보 상세 조회
	@Override
	public AdminCarListVO detail(int car_model_number) throws Exception {
		return adminCarListDao.detail(car_model_number);
	}

	// 차량 수정
	@Override
	public int update(AdminCarListVO vo) {
		int result = 0;
		try {
			result = adminCarListDao.update(vo);
		} catch (Exception e) {
			e.printStackTrace();
			result = 0;
		}
		return result;

	}

	// 차량 삭제
	@Override
	public int delete(int car_model_number) {
		int result = 0;
		try {
			result = adminCarListDao.delete(car_model_number);
		} catch (Exception e) {
			e.printStackTrace();
			result = 0;
		}
		return result;
	}

	// 차량 전체 리스트
	@Override
	public List<AdminCarListVO> list(AdminCarListVO vo) throws Exception {

		return adminCarListDao.list(vo);
	}

}
