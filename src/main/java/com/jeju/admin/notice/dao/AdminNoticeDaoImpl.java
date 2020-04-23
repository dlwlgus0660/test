package com.jeju.admin.notice.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.jeju.admin.notice.vo.AdminNoticeVO;

public class AdminNoticeDaoImpl implements AdminNoticeDao {
	
	@Autowired
	private SqlSession session;
	
	//회원 예약 리스트 구현
	@Override
	public List<AdminNoticeVO> NoticeList() {
		
		return session.selectList("NoticeList");
	}
}
