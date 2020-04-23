package com.jeju.admin.refund.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jeju.admin.refund.vo.AdminRefundVO;

@Repository
public class AdminRefundDaoImpl implements AdminRefundDao {

	@Autowired
	private SqlSession session;
	
	//환불 리스트 구현
	@Override
	public List<AdminRefundVO> refundList(){
		
		return session.selectList("refundList");
	}
	
}
