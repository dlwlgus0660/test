package com.jeju.client.review.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import com.jeju.client.review.vo.ReviewVO;

public class ReviewDaoImpl implements ReviewDao{
	
	@Inject
	private SqlSession session;

	@Override
	public List<ReviewVO> review() {
		
		return session.selectList("review");
	}

	@Override
	public ReviewVO detail(ReviewVO rvvo) {
		
		return session.selectOne("detail", rvvo);
	}
	

}
