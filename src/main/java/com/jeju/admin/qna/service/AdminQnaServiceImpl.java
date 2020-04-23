package com.jeju.admin.qna.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.jeju.admin.qna.dao.AdminQnaDao;
import com.jeju.admin.qna.vo.AdminQnaVO;

@Service
public class AdminQnaServiceImpl implements AdminQnaService {

	@Inject
	private AdminQnaDao adminQnaDao;

	// 게시글 전체 리스트
	@Override
	public List<AdminQnaVO> list() throws Exception {
		return adminQnaDao.list();
	}

	// 상세 페이지
	@Override
	public AdminQnaVO detail(int inq_number) throws Exception {
		return adminQnaDao.detail(inq_number);
	}

	// 게시글 삭제
	@Override
	public int delete(int inq_number) {
		int result = 0;
		try {
			result = adminQnaDao.delete(inq_number);
		} catch (Exception e) {
			e.printStackTrace();
			result = 0;
		}
		return result;
	}

	// 댓글 등록, 수정
	@Override
	public int reUpdate(AdminQnaVO vo) {
		int result = 0;
		try {
			result = adminQnaDao.reUpdate(vo);
		} catch (Exception e) {
			e.printStackTrace();
			result = 0;
		}
		return result;
	}

	// 댓글 삭제
	@Override
	public int reDelete(int inq_number) {
		int result = 0;
		try {
			result = adminQnaDao.reDelete(inq_number);
		} catch (Exception e) {
			e.printStackTrace();
			result = 0;
		}
		return result;
	}

}
