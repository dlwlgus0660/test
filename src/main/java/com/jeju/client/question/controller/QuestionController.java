package com.jeju.client.question.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jeju.client.question.service.QuestionService;
import com.jeju.client.question.vo.QuestionVO;


@Controller
@RequestMapping("/question")
public class QuestionController {
	private Logger log = LoggerFactory.getLogger(QuestionController.class);
	
	@Inject
	private	QuestionService questionService;
	
	
	// 리스트 조회
	@RequestMapping("/qnaboard")
	public ModelAndView list(HttpSession session) throws Exception {
		log.info("qnaboard 호출 성공");

		List<QuestionVO> list = questionService.list();
		ModelAndView mav = new ModelAndView();
		ModelAndView qna = new ModelAndView();

		if (session.getAttribute("ClientLogin") == null) {
			qna.setViewName("client/login/loginForm");
			return qna;
		} else {
			mav.setViewName("client/question/questionList");
			mav.addObject("list", list);
			return mav;
		}
	}
	
	// 게시물 상세 조회
	@RequestMapping(value = "/qnaDetail", method = RequestMethod.GET)
	public ModelAndView detail(@RequestParam int inq_number, HttpSession session) throws Exception {
		log.info("qna deatil 호출 성공");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("client/question/questionDetail");
		mav.addObject("qnavo", questionService.detail(inq_number));
		return mav;
	}
	
	// 글 삭제
	@RequestMapping("/qnaListDelete")
	public String qnaDelete(@RequestParam("inq_number") int inq_number) throws Exception {
		
		log.info("qnaListDelete 호출 성공");
		
		questionService.delete(inq_number);
		
		return "redirect:/question/qnaboard";
	}
	
	// 문의사항 글 작성 페이지로 이동
	@RequestMapping("/qnainsertform")
	public String qnaInsertForm() {
		
		log.info("qnaInsert 페이지 이동 호출 성공");
		
		return "client/question/questionInsert";
	}
	
	// 문의 사항 글 작성시 처리
	@RequestMapping("/qnaInsert")
	public String qnainsert(@ModelAttribute QuestionVO qvo, Model model) {
		
		log.info("qnainsert 처리 요청 호출성공");
		
		int result = 0;
		
		result = questionService.qnaInsert(qvo);
				
		return "redirect:/question/qnaboard";
	}
	
	
}
