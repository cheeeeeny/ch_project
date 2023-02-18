package ch.common.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import static ch.common.jdbc.JdbcTemplate.*;
import static ch.common.jdbc.JdbcTemplate.close;

import ch.common.model.vo.MemberVo;

public class MemberDao {
//	  DESC SEMI_MEMBER;
//	  -------- -------- ------------ 
//	1 ID       NOT NULL VARCHAR2(15) 
//	2 PASSWD   NOT NULL VARCHAR2(15) 
//	3 NAME     NOT NULL VARCHAR2(20) 
//	4 NICKNAME NOT NULL VARCHAR2(30) 
//  5 BIRTH             VARCHAR2(25) 
//	6 PHONE             VARCHAR2(25) 
//	7 GENDER            VARCHAR2(10)  
//	8 EMAIL    NOT NULL VARCHAR2(40)
	
	// 로그인
		public MemberVo login(Connection conn, MemberVo vo) {
			MemberVo result = null;
			String sql = "select ID, NAME, PHONE from SEMI_MEMBER ";
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
		public int enroll (Connection conn, MemberVo vo) {
			int result = -1;
			String query = "insert into SEMI_MEMBER values";
			query += " (?,?,?,?,?,?,?,?)";
			
			PreparedStatement pstmt = null;
			try {
				pstmt = conn.prepareStatement(query);
				// ?가 있다면 채워주기
				pstmt.setString(1, vo.getId());
				pstmt.setString(2, vo.getPasswd());
				pstmt.setString(3, vo.getPasswd());
				pstmt.setString(4, vo.getName());
				pstmt.setString(5, vo.getNickname());
				pstmt.setString(6, vo.getBirth());
				pstmt.setString(7, vo.getPhone());
			    pstmt.setString(8, vo.getGender());
			    pstmt.setString(9, vo.getEmail());
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
	
		
		//아이디 찾기
		public MemberVo findId(Connection conn, MemberVo vo) {
			MemberVo result = null;
			String sql = "select Id from SEMI_MEMBER where NAME=? and EMAIL=?";
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(3, vo.getName());
				pstmt.setString(7, vo.getEmail());
				rs = pstmt.executeQuery();
				if (rs.next()) {
				result = new MemberVo();
				result.setId(rs.getString("id"));
				}
				
			} catch (Exception e) {
				System.out.println("일치하는 이메일이 없습니다: " + e);
			} finally {
				close(rs);
				close(pstmt);
			}
			 return result;
		}	
		
		//비밀번호 찾기
		public MemberVo findPw(Connection conn, MemberVo vo) {
			MemberVo result = null;
			String sql = "select Passwd from SEMI_MEMBER where ID=? and NAME=? and PHONE=?";
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(2, vo.getPasswd());
				rs = pstmt.executeQuery();
				if (rs.next()) {
				result = new MemberVo();
				result.setId(rs.getString("id"));
				result.setName(rs.getString("name"));
				result.setPhone(rs.getString("phone"));
				}
				
			} catch (Exception e) {
				System.out.println("입력하신 정보를 확인해주세요: " + e);
			} finally {
				close(rs);
				close(pstmt);
			}
			 return result;
		}	
		
}
