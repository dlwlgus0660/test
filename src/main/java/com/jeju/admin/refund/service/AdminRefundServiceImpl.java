package com.jeju.admin.refund.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeju.admin.refund.dao.AdminRefundDao;
import com.jeju.admin.refund.vo.AdminRefundVO;

@Service
@Transactional
public class AdminRefundServiceImpl implements AdminRefundService {

	@Autowired
	private AdminRefundDao adminRefundDao;
	
	//1.환불 리스트
	@Override
	public List<AdminRefundVO> refundList(){
		return adminRefundDao.refundList();
	}

	
	//2.환불 상세 정보
	@Override
	public AdminRefundVO detail(int rsv_number){
		return adminRefundDao.detail(rsv_number);
	}
	 
	
	//3.환불 상태 변경
	@Override
	public int update(AdminRefundVO vo) {
		int result = 0;
		try {
			result = adminRefundDao.update(vo);
		} catch (Exception e) {
			e.printStackTrace();
			result = 0;
		}
		return result;

	}
}
