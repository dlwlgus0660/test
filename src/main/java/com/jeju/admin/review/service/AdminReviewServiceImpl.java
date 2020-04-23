package com.jeju.admin.review.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.jeju.admin.review.dao.AdminReviewDao;
import com.jeju.admin.review.vo.AdminReviewVO;

@Service
public class AdminReviewServiceImpl implements AdminReviewService {

	@Inject
	private AdminReviewDao adminReviewDao;

	// 후기 전체 리스트
	@Override
	public List<AdminReviewVO> list() throws Exception {
		return adminReviewDao.list();
	}

	// 후기 상세 페이지
	@Override
	public AdminReviewVO detail(int re_number) throws Exception {
		return adminReviewDao.detail(re_number);
	}

	// 후기 삭제
	@Override
	public int delete(int re_number) {
		int result = 0;
		try {
			result = adminReviewDao.delete(re_number);
		} catch (Exception e) {
			e.printStackTrace();
			result = 0;
		}
		return result;
	}

	// 댓글 등록, 수정
	@Override
	public int reUpdate(AdminReviewVO vo) {
		int result = 0;
		try {
			result = adminReviewDao.reUpdate(vo);
		} catch (Exception e) {
			e.printStackTrace();
			result = 0;
		}
		return result;
	}

	// 댓글 삭제
	@Override
	public int reDelete(int re_number) {
		int result = 0;
		try {
			result = adminReviewDao.reDelete(re_number);
		} catch (Exception e) {
			e.printStackTrace();
			result = 0;
		}
		return result;
	}

}
