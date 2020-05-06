package com.jeju.admin.member.reservation.dao;

import java.util.List;

import com.jeju.admin.member.reservation.vo.AdminMemberReservationVO;

public interface AdminMemberReservationDao {
	//회원 예약 내역 리스트
	public List<AdminMemberReservationVO> memResList(AdminMemberReservationVO vo)throws Exception;
	
	//회원 예약 내역 상세
	public AdminMemberReservationVO detail(int rsv_number) throws Exception;
	
	//회원 상태 변경 저장
	public int update(AdminMemberReservationVO vo);
	
	//전체 레코드 수 구현
	public int memResListCnt(AdminMemberReservationVO vo);
	
	//차량 예약 관리로 인설트
	public int insert(AdminMemberReservationVO vo);
}
