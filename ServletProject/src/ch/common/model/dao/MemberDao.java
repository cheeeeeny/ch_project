package ch.common.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import static ch.common.jdbc.JdbcTemplate.*;
import static ch.common.jdbc.JdbcTemplate.close;

import ch.common.model.vo.MemberVo;

public class MemberDao {
//	DESC SEMI_MEMBER;
//	-------- -------- ------------ 
//	ID       NOT NULL VARCHAR2(15) 
//	PASSWD   NOT NULL VARCHAR2(15) 
//	NAME     NOT NULL VARCHAR2(20) 
//	NICKNAME NOT NULL VARCHAR2(30) 
//	BIRTH             VARCHAR2(25) 
//	PHONE             VARCHAR2(25) 
//	GENDER            VARCHAR2(10) 	 
	
	// 로그인
		public MemberVo login(Connection conn, MemberVo vo) {
			MemberVo result = null;
			String sql = "select ID, NAME, Phone from test_member ";
			sql += " where ID=? and PASSWD=?";
			
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, vo.getId());
				pstmt.setString(2, vo.getPasswd());
				rs = pstmt.executeQuery();
				if(rs.next()) {
					result = new MemberVo();
					result.setId(rs.getString("id"));
					result.setName(rs.getString("name"));
					result.setPhone(rs.getString("phone"));
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				close(rs);
				close(pstmt);
			}
			System.out.println(result);
			return result;
		}
		
		// 회원가입
		public int enroll(Connection conn, MemberVo vo) {
			int result = -1;
			String query = "insert into Test_Member values";
			query += " (?,?,?,?)";
			
			PreparedStatement pstmt = null;
			try {
				pstmt = conn.prepareStatement(query);
				// ?가 있다면 채워주기
				pstmt.setString(1, vo.getId());
				pstmt.setString(2, vo.getPasswd());
				pstmt.setString(3, vo.getName());
				pstmt.setString(4, vo.getNickname());
				pstmt.setString(5, vo.getBirth());
				pstmt.setString(6, vo.getPhone());
			    pstmt.setString(7, vo.getGender());
				// pstmt 실행하기
				// 결과값 result에 대입
				result = pstmt.executeUpdate();			
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
			
			System.out.println("DAO enroll() return : "+ result);
			return result;
		}
		
}
