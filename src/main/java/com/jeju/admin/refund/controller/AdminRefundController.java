package com.jeju.admin.refund.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jeju.admin.refund.service.AdminRefundService;
import com.jeju.admin.refund.vo.AdminRefundVO;

@Controller
@RequestMapping(value = "/admin")
public class AdminRefundController {
	private Logger log = LoggerFactory.getLogger(AdminRefundController.class);

	@Autowired
	private AdminRefundService adminRefundService;

	// 1.환불 신청 리스트
	@RequestMapping(value = "/refund/reFund", method = RequestMethod.GET)
	public ModelAndView refundList(@ModelAttribute AdminRefundVO vo, HttpSession session) {

		log.info("admin refund 호출 성공");

		ModelAndView mav = new ModelAndView();
		ModelAndView login = new ModelAndView();

		List<AdminRefundVO> refList = adminRefundService.refundList();

		vo.getRsv_number();

		if (session.getAttribute("AdminLogin") == null) {
			login.setViewName("/admin/login/adminLogin");
			return login;
		} else {
			mav.setViewName("admin/refund/adminRefund");
			mav.addObject("refundList", refList);
			return mav;
		}
	}

	// 2.회원 예약 상세 내역
	@RequestMapping(value = "/refund/refundDetail", method = RequestMethod.GET)
	public ModelAndView detail(@RequestParam int rsv_number, HttpSession session) throws Exception {

		log.info("admin Detail 호출 성공");
		
		// 모델(데이터) + 뷰(화면)를 함께전달하는 객체
		ModelAndView mav = new ModelAndView();
		// 뷰의 이름
		mav.setViewName("admin/refund/adminRefundDetail");
		// 뷰에 전달할 데이터
		mav.addObject("vo", adminRefundService.detail(rsv_number));

		return mav;
	}

	// 3.환불 상태 변경
	@RequestMapping(value = "/refund/adminrefundUpdate", method = RequestMethod.POST)
	public String update(@ModelAttribute AdminRefundVO vo) throws Exception {
		log.info("update 호출 성공");

		System.out.println(vo.getRsv_number());
		int result = 0;
		String url = "";

		result = adminRefundService.update(vo);

		if (result == 1) {
			url = "/admin/refund/reFund";

		} else {
			url = "/admin/refund/reFund";
		}
		return "redirect:" + url;
	}

}
