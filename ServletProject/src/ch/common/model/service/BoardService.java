package ch.common.model.service;


import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import ch.common.model.dao.BoardDao;
import ch.common.model.vo.BoardVo;
import static ch.common.jdbc.JdbcTemplate.*;

public class BoardService {
	
	public class boardService {
			
		
		
	}

	public ArrayList<BoardVo> selecList() {
		Connection conn = getConnection();
		BoardDao bDao = new BoardDao();
		ArrayList<BoardVo> result = bDao.selectList(conn);
			
		System.out.println("boardservice:"+ result);
			
		close(conn);
		return result ;
		}

	
	}

	
	

