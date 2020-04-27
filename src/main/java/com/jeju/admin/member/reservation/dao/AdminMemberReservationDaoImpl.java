package com.jeju.admin.member.reservation.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jeju.admin.member.reservation.vo.AdminMemberReservationVO;

@Repository
public class AdminMemberReservationDaoImpl implements AdminMemberReservationDao {

	@Inject
	private SqlSession session;

	// 회원 예약 리스트 구현
	@Override
	public List<AdminMemberReservationVO> memResList(AdminMemberReservationVO vo)throws Exception {

		return session.selectList("memResList", vo);
	}

	// 차량 정보 상세 조회
	@Override
	public AdminMemberReservationVO detail(int rsv_number) throws Exception {

		return session.selectOne("detail", rsv_number);
	}

	// 차량 수정
	@Override
	public int update(AdminMemberReservationVO vo) {

		return session.update("update", vo);
	}

	// 전체 레코드 수 구현
	@Override
	public int memResListCnt(AdminMemberReservationVO vo) {
		return (Integer) session.selectOne("memResListCnt");
	}

}
