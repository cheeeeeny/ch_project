package ch.common.model.service;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import ch.common.model.vo.BoardVo;
import ch.common.model.dao.BoardDao;
import static ch.common.jdbc.JdbcTemplate.*;

public class BoardService {
	
	public int  getCountBoard() {
		int result = 0;
		Connection conn = getConnection();
		result = new BoardDao().getCountBoard(conn);
		System.out.println("srv:"+ result);
		close(conn);
		return result;
	}
	
		
	
	public List<BoardVo> getBoardList() {
		List<BoardVo> result = null;
		Connection conn = getConnection();
		result = new BoardDao().getBoardList(conn);
		System.out.println("boardservice:"+ result);
		close(conn);
		return result;
		
	}
	
	// overloading
		public List<BoardVo> getBoardList(int srnum, int ernum) {
			List<BoardVo> result = null;
			Connection conn = getConnection();
			result = new BoardDao().getBoardList(conn);
			System.out.println("boardservice:"+ result);
			close(conn);
			return result;
			
		}



		
		
}
