package com.jeju.admin.car.reservation.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jeju.admin.car.reservation.service.AdminCarReservationService;
import com.jeju.admin.car.reservation.vo.AdminCarReservationVO;
import com.jeju.admin.member.reservation.controller.AdminMemberReservationController;

@Controller
@RequestMapping(value = "/admin")
public class AdminCarReservationController {
	private Logger log = LoggerFactory.getLogger(AdminMemberReservationController.class);

	@Autowired
	private AdminCarReservationService adminCarReservationService;
	
	//1.차량 예약 리스트
	@RequestMapping(value="/carres/carRes", method = RequestMethod.GET)
	public ModelAndView carResList(HttpSession session){
		
		log.info("admin adminCarReservation 호출 성공");
		
		ModelAndView mav = new ModelAndView();
		ModelAndView login = new ModelAndView();
		
		List<AdminCarReservationVO> carRList = adminCarReservationService.carResList();
		
		if (session.getAttribute("AdminLogin") == null) {
			login.setViewName("/admin/login/adminLogin");
			return login;
		} else {
			mav.addObject("carResList", carRList);
			mav.setViewName("admin/carreservation/adminCarReservation");
			return mav;
		}
			
	}
}
