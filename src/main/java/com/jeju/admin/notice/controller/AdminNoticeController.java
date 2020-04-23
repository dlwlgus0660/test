package com.jeju.admin.notice.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jeju.admin.car.reservation.vo.AdminCarReservationVO;
import com.jeju.admin.member.reservation.controller.AdminMemberReservationController;
import com.jeju.admin.notice.service.AdminNoticeService;
import com.jeju.admin.notice.vo.AdminNoticeVO;

@Controller
@RequestMapping(value="/admin")
public class AdminNoticeController {
	private Logger log = LoggerFactory.getLogger(AdminMemberReservationController.class);
	
	@Autowired
	private AdminNoticeService adminNoticeService;
	
		//1.공지사항 리스트
		@RequestMapping(value="/noticeboard/notice", method = RequestMethod.GET)
		public ModelAndView NoticeList(HttpSession session){
			
			log.info("admin adminNotice 호출 성공");
			
			ModelAndView mav = new ModelAndView();
			ModelAndView login = new ModelAndView();
			
			List<AdminNoticeVO> notList = adminNoticeService.NoticeList();
			
			if (session.getAttribute("AdminLogin") == null) {
				login.setViewName("/admin/login/adminLogin");
				return login;
			} else {
				mav.addObject("NoticeList", notList);
				mav.setViewName("admin/noticeboard/notice");
				return mav;
			}
			
			
		}
}
