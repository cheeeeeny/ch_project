package ch.board.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ch.common.model.dao.BoardDao;
import ch.common.model.service.BoardService;
import ch.common.model.service.MemberService;
import ch.common.model.vo.BoardVo;
import ch.common.model.vo.MemberVo;

/**
 * Servlet implementation class WriteController
 */
@WebServlet("/boardwrite")
public class BoardWriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BoardWriteController() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("./WEB-INF/view/board/boardwrite.jsp").forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//1. 전달받은데이터 읽어 변수에 담기 (변수이름은 vo에 설정한 것과 맞춰주는것이 좋다.)
				String boardTitle= request.getParameter("boardTitle");
				String boardWriter= request.getParameter("boardWriter");
				String boardContent= request.getParameter("boardContent");
				
				BoardVo vo = new BoardVo();
				vo.setBoardTitle(boardTitle);
				vo.setBoardWriter(boardWriter);
				vo.setBoardContent(boardContent);
				
				System.out.println("입력된 정보 : " + vo);
				
				//2. DB다녀오기 (JdbcTemplate - DTO/VO - DAO - Service - Controller 순으로 작성)
				int result = new BoardService().boardWrite(vo);
				
				if(result < 1) {
					System.out.println("게시글 작성 성공");
					
					response.sendRedirect(request.getContextPath()+"/boardhome");
				} else {
					System.out.println("등록실패");
					response.sendRedirect(request.getContextPath()+"/");
					
					
					
					
				} 
                                    
	}
}

