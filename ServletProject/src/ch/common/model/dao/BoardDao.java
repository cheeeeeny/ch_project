package ch.common.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import static ch.common.jdbc.JdbcTemplate.*;
import ch.common.model.vo.BoardVo;


public class BoardDao {
	
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
	
	//overloading
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

}	
	
	
	
	/*	public class BoardDao {
	
		private Properties prop = new Properties();
	
	  public BoardDao( ) {
		String sql = "select BOARD_NUM, BOARD_TITLE, BOARD_WRITER, BOARD_CONTENT, "
				   + " BOARD_ORIGINAL_FILENAME, BOARD_RENAME_FILENAME, BOARD_DATE, "
				   + " BOARD_LEVEL, BOARD_REF, BOARD_REPLY_SEQ, BOARD_READCOUNT from board "
				   + " order by board_ref desc, board_reply_seq asc";
		try {
			prop.load(new FileReader(sql));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

//	public ArrayList<BoardVo> selectList(Connection conn) {
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		
//		ArrayList<BoardVo> list = null;
//		
//		String query = "slect * from BOARD where "
//	}
	
	public ArrayList<BoardVo> selectList(Connection conn) {
		ArrayList<BoardVo> result = null;
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

*/	

