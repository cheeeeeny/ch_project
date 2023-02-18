package ch.common.model.service;



import java.sql.Connection;

import static ch.common.jdbc.JdbcTemplate.*;
import static ch.common.jdbc.JdbcTemplate.close;
import static ch.common.jdbc.JdbcTemplate.getConnection;

import ch.common.model.dao.MemberDao;
import ch.common.model.vo.MemberVo;

public class MemberService {

	//로그인
	public MemberVo login(MemberVo vo) {
		MemberVo result = null;
		Connection conn = getConnection();
		result = new MemberDao().login(conn, vo);
		close(conn);
		return result;
	}

	
	// 회원가입
		public int enroll(MemberVo vo) {
			int result = -1;
			Connection conn = getConnection();
			result = new MemberDao().enroll(conn, vo);
			close(conn);
			return result;
		}
	
	
}
