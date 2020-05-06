package com.jeju.client.login.controller;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jeju.client.login.service.LoginService;
import com.jeju.client.login.vo.LoginVO;
import com.jeju.client.member.vo.MemberVO;

@Controller
@RequestMapping("/login")
public class LoginController {
	private Logger log = LoggerFactory.getLogger(LoginController.class);

	@Inject
	private LoginService loginService;
	@Inject
	private JavaMailSender mailSender;

	/**************************************
	 * 로그인 화면 보여주기 위한 메서드
	 ************************************/
	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public String login() {
		log.info("login get 호출 성공");
		return "client/login/loginForm";
	}

	// 로그인 처리 메소드
	// 로그인 실패 시 처리할 내용 포함\
	@ResponseBody
	@RequestMapping(value = "/goin", method = RequestMethod.POST)
	public ModelAndView memberlogin(@ModelAttribute("LoginVO") LoginVO lvo, HttpSession session,
			HttpServletRequest request) {
		log.info("Login post 호출 성공");
		ModelAndView mav = new ModelAndView();


		try {
			lvo = loginService.loginSelect(lvo);
		} catch (Exception e) {
			e.printStackTrace();
		}

		if (lvo == null) { // 로그인 실패시
			mav.addObject("errCode", 1); // 로그인 실패 alert창을 띄우고 기존 페이지로 이동
			mav.setViewName("/client/login/loginForm");
			return mav;
		}
		// 로그인 성공시
		else {
			session.setAttribute("id", lvo.getMem_id());
			session.setAttribute("ClientLogin", lvo);

			mav.setViewName("/client/mainview/mainView"); // 로그인 성공, 메인 페이지로 이동
			return mav;
		}
	}

	// 아이디 비밀번호 찾기 페이지 이동
	@RequestMapping(value = "/idpwfind", method = RequestMethod.GET)
	public String idpwfind() {
		log.info("idpwfind get 호출 성공");
		return "client/login/idpwfind";
	}

	// 아이디 찾기 메서드
	@ResponseBody
	@RequestMapping(value = "/idfind", method = { RequestMethod.POST, RequestMethod.GET })
	public int idfind(@ModelAttribute MemberVO mvo) {

		log.info("idfind 호출 성공");

		int result = 0;

		MemberVO member = new MemberVO();

		member = loginService.userIdfind(mvo);

		if (member != null) {
			result = 2;
		} else {
			result = 1;
		}

		return result;
	}

	// 아이디 찾기 결과 창 메서드
	@RequestMapping(value = "/idresult", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView userIdFind(@ModelAttribute MemberVO mvo) {

		log.info("userIdFind 호출 성공");

		ModelAndView mav = new ModelAndView();

		MemberVO member = new MemberVO();

		member = loginService.userIdfind(mvo);

		String id = member.getMem_id();

		mav.addObject("id", id);

		mav.setViewName("client/login/idresult");

		return mav;
	}

	// 비밀번호 찾기 메서드
	@ResponseBody
	@RequestMapping(value = "/pwfind", method = { RequestMethod.POST, RequestMethod.GET })
	public int pwfind(@ModelAttribute MemberVO mvo) {
		
		log.info("pwfind 호출 성공");
		
		// 선언부
		String tempPw = (int) (Math.random() * 100000000) + ""; // 임시 비밀번호 생성 
		int result = 0;
		MemberVO mvo1 = new MemberVO();
		
		mvo.setMem_password(tempPw); // 임시 비밀번호 set
		
		String setFrom = "wlgus10629@gmail.com";
		String toMail = mvo.getMem_id();
		String title = "제주렌트카 임시 비밀번호";
		
		String content = toMail + "회원님의 비밀번호는 [" + tempPw + "]입니다. 비밀번호 변경을 해주세요.";
		
		mvo1 = loginService.pwSearch(mvo);
		
		if(mvo1 != null) {
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
			messageHelper.setFrom(setFrom);		// 보내는사람
			messageHelper.setTo(toMail);		// 받는사람
			messageHelper.setSubject(title);	// 메일제목 (생략가능)
			messageHelper.setText(content);		// 메일 내용
			mailSender.send(message);
		} catch (Exception e) {
			e.printStackTrace();
		}
			result = 1;
		} else {
			result = 2;
		}
		
		try {
			result = loginService.updatePw(mvo); // 임시 비밀번호를 db에 저장
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
		
	}
	
	

}
