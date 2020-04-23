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
	
	@Override
	public List<AdminRefundVO> refundList(){
		return adminRefundDao.refundList();
	}
}
