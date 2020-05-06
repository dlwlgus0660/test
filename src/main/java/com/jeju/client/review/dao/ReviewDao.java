package com.jeju.client.review.dao;

import java.util.List;

import com.jeju.client.review.vo.ReviewVO;

public interface ReviewDao {
	
	public List<ReviewVO> review();
	public ReviewVO detail(ReviewVO rvvo);

}
