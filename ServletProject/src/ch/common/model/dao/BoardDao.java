package ch.common.model.dao;

//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.util.ArrayList;
//import java.util.List;

import ch.common.model.vo.BoardVo;

import static ch.common.jdbc.JdbcTemplate.*;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;

public class BoardDao {
	
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

	
}
