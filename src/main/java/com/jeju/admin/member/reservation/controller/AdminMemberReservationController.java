package com.jeju.admin.member.reservation.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jeju.admin.member.reservation.service.AdminMemberReservationService;
import com.jeju.admin.member.reservation.vo.AdminMemberReservationVO;


@Controller
@RequestMapping(value="/admin")
public class AdminMemberReservationController {
	private Logger log = LoggerFactory.getLogger(AdminMemberReservationController.class);
	
	@Autowired
	private AdminMemberReservationService adminMemberReservationService;
	
	//1.회원 예약 리스트
	@RequestMapping(value="/memreservation/memRes", method = RequestMethod.GET)
	public ModelAndView memResList(HttpSession session){
		
		log.info("admin memRes 호출 성공");
		
		ModelAndView mav = new ModelAndView();
		ModelAndView login = new ModelAndView();
		
		List<AdminMemberReservationVO> memList = adminMemberReservationService.memResList();
		
		if (session.getAttribute("AdminLogin") == null) {
			login.setViewName("admin/login/adminLogin");
			return login;
		} else {
			mav.addObject("memResList", memList);
			mav.setViewName("admin/memreservation/adminMemReservation");
			return mav;
		}
	}
	//2.회원 예약 상세 내역 미완성
	@RequestMapping(value="/memreservation/adminMemReservationDetail.do")
	public String test() {
		
		return null;
	}
}
