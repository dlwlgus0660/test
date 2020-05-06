package com.jeju.client.review.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeju.client.review.dao.ReviewDao;
import com.jeju.client.review.vo.ReviewVO;

@Service
@Transactional
public class ReviewServiceImpl implements ReviewService{
	
	@Inject
	private ReviewDao dao;

	@Override
	public List<ReviewVO> review() {
		return dao.review();
	}

	@Override
	public ReviewVO detail(ReviewVO rvvo) {
		return dao.detail(rvvo);
	}
	

}
