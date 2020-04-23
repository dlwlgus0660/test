package com.jeju.admin.notice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeju.admin.notice.dao.AdminNoticeDao;
import com.jeju.admin.notice.vo.AdminNoticeVO;

@Service
@Transactional
public class AdminNoticeServiceImpl implements AdminNoticeService {
	
	@Autowired
	private AdminNoticeDao adminNoticeDao;
	
	@Override
	public List<AdminNoticeVO> NoticeList(){
		return adminNoticeDao.NoticeList();
	}
}
