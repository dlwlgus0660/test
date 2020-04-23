package com.jeju.admin.member.list.service;

import java.util.List;

import javax.inject.Inject;
import org.springframework.stereotype.Service;

import com.jeju.admin.car.list.vo.AdminCarListVO;
import com.jeju.admin.member.list.dao.AdminMemberListDao;
import com.jeju.admin.member.list.vo.AdminMemberListVO;

@Service
public class AdminMemberListServiceImpl implements AdminMemberListService {

	@Inject
	private AdminMemberListDao adminMemberListDao;

	// 회원 전체 조회
	@Override
	public List<AdminMemberListVO> memList() throws Exception {
		return adminMemberListDao.memList();
	}

	// 회원 상세 조회
	@Override
	public AdminMemberListVO memDetail(String mem_id) throws Exception {
		return adminMemberListDao.memDetail(mem_id);
	}

	// 상태 수정
	@Override
	public int memUpdate(AdminMemberListVO vo) {
		int result = 0;
		try {
			result = adminMemberListDao.memUpdate(vo);
		} catch (Exception e) {
			e.printStackTrace();
			result = 0;
		}
		return result;

	}

}
