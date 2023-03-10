package ch.common.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static ch.common.jdbc.JdbcTemplate.*;
import static ch.common.jdbc.JdbcTemplate.close;

import ch.common.model.vo.BoardVo;
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
			String sql = "select ID, NAME, PHONE, EMAIL from SEMI_MEMBER where ID=? and PASSWD=?";
			
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
					result.setEmail(rs.getString("email"));
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
		
		
		// ID 값의 중복을 조회하는 메소드
		 public int dupIdChk(Connection conn, String id) {
		 PreparedStatement pstmt = null;
		 ResultSet rs = null;
		 int result = 0;
		 // id로 테이블을 조회하여 있으면 1 이상, 없으면 0인 쿼리 작성
		 String query = "SELECT COUNT(*) FROM TEST_MEMBER WHERE ID = ?";
		 try {
		 pstmt = conn.prepareStatement(query);
		 pstmt.setString(1, id);
		 rs = pstmt.executeQuery();
		 if(rs.next()) {
		 result = rs.getInt(1); // rs의 첫 컬럼의 숫자값을 가져온다
		 }
		 } catch (SQLException e) {
		 e.printStackTrace();
		 } finally {
		 close(rs);
		 close(pstmt);
		 }
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
				pstmt.setString(3, vo.getName());
				pstmt.setString(4, vo.getNickname());
				pstmt.setString(5, vo.getBirth());
				pstmt.setString(6, vo.getPhone());
			    pstmt.setString(7, vo.getGender());
			    pstmt.setString(8, vo.getEmail());
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
	
		
		//회원리스트
		public List<MemberVo> getMemberList(Connection conn) {
			List<MemberVo> result = null;
			String sql = "select ID, PASSWD, NAME, NICKNAME, BIRTH, PHONE, GENDER, EMAIL FROM SEMI_MEMBER "
					   + " order by NAME";
			
			//"안에는 ; 없애야한다. \r\n도 없애기"
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				//다중행
				result = new ArrayList<MemberVo>();
				while(rs.next()) {
					MemberVo vo = new MemberVo();
					vo.setId(rs.getString("id"));
					vo.setPasswd(rs.getString("passwd"));
					vo.setName(rs.getString("name"));
					vo.setNickname(rs.getString("nickname"));
					vo.setBirth(rs.getString("birth"));
					vo.setPhone(rs.getString("phone"));
					vo.setGender(rs.getString("gender"));
					vo.setEmail(rs.getString("email"));
					result.add(vo);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				close(rs);
				close(pstmt);
			} 
		      System.out.println("memberdao : " + result);
			  return result;
		
		}
		
		
		// 기존 사용자의 정보를 수정하여 DataBase의 데이터를 수정
		 public int updateMember(Connection conn, MemberVo vo) {
		 PreparedStatement pstmt = null;
		 int result = 0;
		 String query = "UPDATE SEMI_MEMBER SET ID = ?, PASSWD = ?, NAME = ?, NICKNAME = ?, BIRTH = ?, PHONE = ?, GENDER = ? WHERE EMAIL = ?";
		 try {
		 pstmt = conn.prepareStatement(query);
		 pstmt.setString(1, vo.getId());
	 	 pstmt.setString(2, vo.getPasswd());
		 pstmt.setString(3, vo.getPasswd());
		 pstmt.setString(4, vo.getName());
		 pstmt.setString(5, vo.getNickname());
		 pstmt.setString(6, vo.getBirth());
		 pstmt.setString(7, vo.getPhone());
		 pstmt.setString(8, vo.getGender());
		 pstmt.setString(9, vo.getEmail());
		 
		 result = pstmt.executeUpdate();
		 } catch (SQLException e) {
		 e.printStackTrace();
		 } finally {
		 close(pstmt);
		 }
		 return result;
		}

		// 기존 사용자를 삭제
		 public int deleteMember(Connection conn, String id) {
		 PreparedStatement pstmt = null;
		 int result = 0;
		 String query = "DELETE FROM TEST_MEMBER WHERE ID = ?";
		 try {
		 pstmt = conn.prepareStatement(query);
		 pstmt.setString(1, id);
		 result = pstmt.executeUpdate();
		 } catch (SQLException e) {
		 e.printStackTrace();
		 } finally {
		 close(pstmt);
		 }
		 return result;
		 }

		
		// 내정보보기
		 public MemberVo myInfo(Connection conn, String id) {
				MemberVo result = null;
				String sql = "select NAME, NICKNAME, GENDER, PHONE from SEMI_MEMBER where ID=? ";
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				try {
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, id);
					rs = pstmt.executeQuery();
					if(rs.next()) {
						result = new MemberVo();
						result.setName(rs.getString("name"));
						result.setNickname(rs.getString("nickname"));
						result.setGender(rs.getNString("gender"));
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
		 
			
		
		
		 
		 
		 
		
		
		//TODO 아이디/비밀번호 찾기 수정 필요합니다.
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
