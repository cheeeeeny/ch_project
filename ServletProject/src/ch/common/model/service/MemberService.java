package ch.common.model.service;



import java.sql.Connection;

import static ch.common.jdbc.JdbcTemplate.*;
import ch.common.model.dao.MemberDao;
import ch.common.model.vo.MemberVo;

public class MemberService {

	public MemberVo login(MemberVo vo) {
		MemberVo result = null;
		Connection conn = getConnection();
		result = new MemberDao().login(conn, vo);
		close(conn);
		return result;
	}
	
}
