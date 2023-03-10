package ch.common.model.service;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import ch.common.model.vo.BoardVo;
import ch.common.model.vo.MemberVo;
import ch.common.model.dao.BoardDao;
import ch.common.model.dao.MemberDao;

import static ch.common.jdbc.JdbcTemplate.*;

public class BoardService {
	
	//게시글 갯수
	public int  getCountBoard() {
		int result = 0;
		Connection conn = getConnection();
		result = new BoardDao().getCountBoard(conn);
		System.out.println("srv:"+ result);
		close(conn);
		return result;
	}
	
		
	//게시글 리스트
	public List<BoardVo> getBoardList() {
		List<BoardVo> result = null;
		Connection conn = getConnection();
		result = new BoardDao().getBoardList(conn);
		System.out.println("boardservice:"+ result);
		close(conn);
		return result;
		
	}
	
	// overloading - 페이지수
		public List<BoardVo> getBoardList(int srnum, int ernum) {
			List<BoardVo> result = null;
			Connection conn = getConnection();
			result = new BoardDao().getBoardList(conn);
			System.out.println("boardservice:"+ result);
			close(conn);
			return result;
			
		}


	//게시글작성
		public int boardWrite(BoardVo vo) {
			int result = -1;
			Connection conn = getConnection();
			result = new BoardDao().boardWrite(conn, vo);
			close(conn);
			return result;
		}
		
		
}
