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

	//1.환불 리스트
	@Override
	public List<AdminRefundVO> refundList() {

		return session.selectList("refundList");
	}

	//2.환불 상세 내역
	@Override
	public AdminRefundVO detail(int rsv_number) {

		return session.selectOne("detail", rsv_number);
	}

	//3.환불 상태 변경
	@Override
	public int update(AdminRefundVO vo) {

		return session.update("update", vo);
	}
}
