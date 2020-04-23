package com.jeju.admin.qna.service;

import java.util.List;

import com.jeju.admin.qna.vo.AdminQnaVO;

public interface AdminQnaService {
	// qna 전체 리스트
	public List<AdminQnaVO> list() throws Exception;

	// qna 상세 조회
	public AdminQnaVO detail(int inq_number) throws Exception;

	// qna 리스트 삭제
	public int delete(int car_model_number);

	// qna 댓글 등록, 수정
	public int reUpdate(AdminQnaVO vo);

	// qna 댓글 삭제
	public int reDelete(int car_model_number);
}
