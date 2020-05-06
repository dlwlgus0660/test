package com.jeju.client.question.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jeju.client.question.vo.QuestionVO;

@Repository
public class QuestionDaoImpl implements QuestionDao {
	
	@Inject
	private SqlSession session;
	
	@Override
	public List<QuestionVO> list() throws Exception {
		return session.selectList("list");
	}

	@Override
	public QuestionVO detail(int inq_number) throws Exception {
		return session.selectOne("detail", inq_number);
	}

	@Override
	public int delete(int inq_number) {
		return session.delete("delete", inq_number);
	}

	@Override
	public int qnaInsert(QuestionVO qvo) {
		return session.insert("qnaInsert", qvo);
	}

}
