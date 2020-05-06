package com.jeju.admin.refund.service;

import java.util.List;

import com.jeju.admin.refund.vo.AdminRefundVO;

public interface AdminRefundService {
	//1.환불 리스트
	public List<AdminRefundVO> refundList();
	
	//2.환불 상세 페이지
	public AdminRefundVO detail(int rsv_number);
	
	//3.환불 상태 변경
	public int update(AdminRefundVO vo);
}
