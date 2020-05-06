package com.jeju.client.review.controller;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jeju.client.review.service.ReviewService;
import com.jeju.client.review.vo.ReviewVO;

@Controller
@RequestMapping("/review")
public class ReviewController {

	@Inject
	private ReviewService review;
	
	
	
	@RequestMapping(value = "/list",method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView list(@ModelAttribute ReviewVO rvvo,HttpSession session) {
		ModelAndView model = new ModelAndView();
		

		
		System.out.println("아이디="+rvvo.getMEM_ID());
		
		List<ReviewVO> R_list = review.review();
		
		model.addObject("review_board",R_list);
		model.setViewName("client/review/ReviewList");
		return model;
	}
	
	@RequestMapping(value = "/detail",method = RequestMethod.GET)
	public ModelAndView detail(@ModelAttribute ReviewVO rvvo) {
		ModelAndView model = new ModelAndView();
		
		ReviewVO rev = new ReviewVO();
		rev = review.detail(rvvo);
		
		model.addObject("detail",rev);
		model.setViewName("client/review/ReviewDetail");
		
		return model;
	}
	
	
	
	
	
	
}
