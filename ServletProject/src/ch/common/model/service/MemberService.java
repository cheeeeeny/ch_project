package ch.common.model.service;

import java.sql.Connection;

import static ch.common.jdbc.JdbcTemplate.*;
import static ch.common.jdbc.JdbcTemplate.close;
import static ch.common.jdbc.JdbcTemplate.getConnection;

import ch.common.model.dao.MemberDao;
import ch.common.model.vo.MemberVo;

public class MemberService {

	// 로그인
	public MemberVo login(MemberVo vo) {
		MemberVo result = null;
		Connection conn = getConnection();
		result = new MemberDao().login(conn, vo);
		close(conn);
		return result;
	}
	
	// ID 중복 체크를 위한 메소드
	 public int dupIdChk(String id) {
	 Connection conn = getConnection();
	 int result = new MemberDao().dupIdChk(conn, id);
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
	
	
	// 기존 Member 객체의 정보를 수정하는 메소드
	 public int updateMember(MemberVo vo) {
	 Connection conn = getConnection();
	 int result = new MemberDao().updateMember(conn, vo);
	 
	 if(result > 0) commit(conn);
	 else rollback(conn);
	 close(conn);
	 
	 return result;
	}
	 
	// 멤버 객체의 삭제를 요청하는 메소드
	 public int deleteMember(String id) {
	 Connection conn = getConnection();
	 int result = new MemberDao().deleteMember(conn, id);
	 
	 if(result > 0) commit(conn);
	 else rollback(conn);
	 close(conn);
	 
	 return result;
	 
	}

	
	
	//내정보보기
	 public MemberVo myinfo(String id) {
			MemberVo result = null;
			Connection conn = getConnection();
			result = new MemberDao().myInfo(conn, id);
			close(conn);
			return result;
		}
	
	
	
	
	
	 //TODO 수정이필요한 부분입니다.
	// 아이디찾기
	public MemberVo findId(MemberVo vo) {
		MemberVo result = null;
		Connection conn = getConnection();
		result = new MemberDao().findId(conn, vo);
		close(conn);
		return result;
	}

	// 비밀번호찾기
	public MemberVo findPw(MemberVo vo) {
		MemberVo result = null;
		Connection conn = getConnection();
		result = new MemberDao().findPw(conn, vo);
		close(conn);
		return result;
	}

	

}
