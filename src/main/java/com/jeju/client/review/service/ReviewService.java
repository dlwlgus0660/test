package com.jeju.client.review.service;

import java.util.List;

import com.jeju.client.review.vo.ReviewVO;

public interface ReviewService {
	
		public List<ReviewVO> review();
		public ReviewVO detail(ReviewVO rvvo);

}
