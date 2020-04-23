package com.jeju.admin.refund.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jeju.admin.refund.service.AdminRefundService;
import com.jeju.admin.refund.vo.AdminRefundVO;

@Controller
@RequestMapping(value="/admin")
public class AdminRefundController {
	private Logger log = LoggerFactory.getLogger(AdminRefundController.class);

	@Autowired
	private AdminRefundService adminRefundService;
	
	//1.환불 신청 리스트
	@RequestMapping(value="/refund/reFund", method = RequestMethod.GET)
	public ModelAndView refundList(HttpSession session) {
		
		log.info("admin refund 호출 성공");
		
		ModelAndView mav = new ModelAndView();
		ModelAndView login = new ModelAndView();
		
		List<AdminRefundVO> refList = adminRefundService.refundList();
		
		;
		if (session.getAttribute("AdminLogin") == null) {
			login.setViewName("/admin/login/adminLogin");
			return login;
		} else {
			mav.addObject("refundList", refList);
			mav.setViewName("admin/refund/adminRefund");
			return mav;
		}
	}
	
}
