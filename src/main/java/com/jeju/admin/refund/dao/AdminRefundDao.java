package com.jeju.admin.refund.dao;

import java.util.List;

import com.jeju.admin.refund.vo.AdminRefundVO;

public interface AdminRefundDao {
	//1.환불 리스트
	public List<AdminRefundVO> refundList();
	
	
	//2.환불 내역 상세
	public AdminRefundVO detail(int rsv_number);
	
	//3.환불 상태 변경 저장
	public int update(AdminRefundVO vo);
}
