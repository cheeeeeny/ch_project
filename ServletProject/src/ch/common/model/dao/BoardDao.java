package ch.common.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static ch.common.jdbc.JdbcTemplate.*;
import ch.common.model.vo.BoardVo;
import ch.common.model.vo.MemberVo;


public class BoardDao {
//	----------------------- -------- -------------- 
//	 1 BOARD_NUM               NOT NULL NUMBER         
//	 2 BOARD_TITLE                      VARCHAR2(50)   
//	 3 BOARD_WRITER                     VARCHAR2(15)   
//	 4 BOARD_CONTENT                    VARCHAR2(2000) 
//	 5 BOARD_ORIGINAL_FILENAME          VARCHAR2(100)  
//	 6 BOARD_RENAME_FILENAME            VARCHAR2(100)  
//	 7 BOARD_DATE                       DATE           
//	 8 BOARD_LEVEL                      NUMBER         
//	 9 BOARD_REF                        NUMBER         
//	10 BOARD_REPLY_SEQ                  NUMBER         
//	11 BOARD_READCOUNT                  NUMBER   
	
	//전체글갯수
	public int getCountBoard (Connection conn){
		int result = 0;
		String sql = "select count(*) cnt from BOARD";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql); 
			rs = pstmt.executeQuery();
			if(rs.next()) {
				
				result = rs.getInt("cnt");
//			  = result = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
			
		}
		
		
		return result;
	} 
	
	
	//게시글리스트
	public List<BoardVo> getBoardList(Connection conn) {
		List<BoardVo> result = null;
		String sql = "select BOARD_NUM, BOARD_TITLE, BOARD_WRITER, BOARD_CONTENT, "
				   + " BOARD_ORIGINAL_FILENAME, BOARD_RENAME_FILENAME, BOARD_DATE, "
				   + " BOARD_LEVEL, BOARD_REF, BOARD_REPLY_SEQ, BOARD_READCOUNT from board "
				   + " order by board_ref desc, board_reply_seq asc";
	
		//"안에는 ; 없애야한다. \r\n도 없애기"
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			//다중행
			result = new ArrayList<BoardVo>();
			while(rs.next()) {
				BoardVo vo = new BoardVo();
				vo.setBoardNum(rs.getInt("board_Num"));
				vo.setBoardTitle(rs.getString("board_Title"));
				vo.setBoardWriter(rs.getString("board_Writer"));
				vo.setBoardContent(rs.getString("board_Content"));
				vo.setBoardOriginalFilename(rs.getString("board_Original_Filename"));
				vo.setBoardRenameFilename(rs.getString("board_Rename_Filename"));
				vo.setBoardDate(rs.getDate("board_Date"));
				vo.setBoardLevel(rs.getInt("board_Level"));
				vo.setBoardRef(rs.getInt("board_Ref"));
				vo.setBoardReplySeq(rs.getInt("board_Reply_Seq"));
				vo.setBoardReadcount(rs.getInt("board_Readcount"));
				result.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		} 
	      System.out.println("boarddao" + result);
		  return result;
	
	}
	
	//overloading - 페이지수
	public List<BoardVo> getBoardList(Connection conn, int srnum, int ernum) {
		List<BoardVo> result = null;
		String sql =  "select * "
				  + " from (select rownum rn, tbl_1.* "
				  + " from (select BOARD_NUM, BOARD_TITLE, BOARD_WRITER, BOARD_CONTENT, "
				  + " BOARD_ORIGINAL_FILENAME, BOARD_RENAME_FILENAME, BOARD_DATE, "
				  + " BOARD_LEVEL, BOARD_REF, BOARD_REPLY_SEQ, BOARD_READCOUNT "
				  + " from board "
				  + " order by board_ref desc, board_reply_seq asc) tbl_1 "
				  + " ) tbl_2 "					   
				  + " where rn between ? and ?" ;					   
		//"안에는 ; 없애야한다. \r\n도 없애기"
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			// ? 채우기 : 1번째 ? = srnum대입,  2번째 ? = ernum대입
			pstmt.setInt(1, srnum);
			pstmt.setInt(2, ernum);
			rs = pstmt.executeQuery();
			//다중행
			result = new ArrayList<BoardVo>();
			while(rs.next()) {
				BoardVo vo = new BoardVo();
				vo.setBoardNum(rs.getInt("board_Num"));
				vo.setBoardTitle(rs.getString("board_Title"));
				vo.setBoardWriter(rs.getString("board_Writer"));
				vo.setBoardContent(rs.getString("board_Content"));
				vo.setBoardOriginalFilename(rs.getString("board_Original_Filename"));
				vo.setBoardRenameFilename(rs.getString("board_Rename_Filename"));
				vo.setBoardDate(rs.getDate("board_Date"));
				vo.setBoardLevel(rs.getInt("board_Level"));
				vo.setBoardRef(rs.getInt("board_Ref"));
				vo.setBoardReplySeq(rs.getInt("board_Reply_Seq"));
				vo.setBoardReadcount(rs.getInt("board_Readcount"));
				result.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		} 
	      System.out.println("boarddao" + result);
		  return result;
	
	}
	

	
	//게시글작성
			public int boardWrite (Connection conn, BoardVo vo) {
				int result = -1;
				String query ="insert into board values ((select NVL(MAX(BOARD_NUM),0)+1 from board), BOARD_TITLE = '2' , BOARD_WRITER = '3' , BOARD_CONTENT = '4', null, null, default, default, (select NVL(MAX(BOARD_NUM),0)+1 from board), default, default) " ;
						
				PreparedStatement pstmt = null;
				try {
					pstmt = conn.prepareStatement(query);
					// ?가 있다면 채워주기
					pstmt.setString(1, vo.getBoardTitle());
					pstmt.setString(2, vo.getBoardWriter());
					pstmt.setString(3, vo.getBoardContent());
					// pstmt 실행하기
					// 결과값 result에 대입
					result = pstmt.executeUpdate();			
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					close(pstmt);
				}
				
				System.out.println("BoardDao() 입력된 값 : "+ result);
				return result;
			}


			public int boardWrite(BoardVo vo) {
				// TODO Auto-generated method stub
				return 0;
			}
}
	

