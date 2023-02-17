package ch.common.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import static ch.common.jdbc.JdbcTemplate.*;
import ch.common.model.vo.MemberVo;

public class MemberDao {
//  desc test_member; 
//	ID     NOT NULL VARCHAR2(15) 
//	PASSWD NOT NULL VARCHAR2(15) 
//	NAME   NOT NULL VARCHAR2(20) 
//	PHONE  NOT NULL VARCHAR2(30) 
	
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
		
}
