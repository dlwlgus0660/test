package com.jeju.client.question.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.jeju.client.question.dao.QuestionDao;
import com.jeju.client.question.vo.QuestionVO;

@Service
public class QuestionServiceImpl implements QuestionService{
	
	@Inject
	private QuestionDao questionDao;
	
	@Override
	public List<QuestionVO> list() throws Exception {
		return questionDao.list();
	}

	@Override
	public QuestionVO detail(int inq_number) throws Exception {
		return questionDao.detail(inq_number);
	}

	@Override
	public int delete(int inq_number) {
		int result = 0 ;
		
		try {
			result = questionDao.delete(inq_number);
		} catch (Exception e) {
			e.printStackTrace();
			result = 0;
		}
		
		return result;
	}

	@Override
	public int qnaInsert(QuestionVO qvo) {
		return questionDao.qnaInsert(qvo);
	}

}
