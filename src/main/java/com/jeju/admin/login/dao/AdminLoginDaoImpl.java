package com.jeju.admin.login.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jeju.admin.login.vo.AdminLoginVO;


@Repository
public class AdminLoginDaoImpl implements AdminLoginDao {

	// sql 쿼리를 사용하기 위해서 의존성을 주입함
	@Autowired
	private SqlSession sqlSession;

	@Override
	public AdminLoginVO loginCheck(AdminLoginVO lvo) { // 관리자 테이블을 select 조회한 결과를 리턴
		return sqlSession.selectOne("loginCheck", lvo);
	}

}
