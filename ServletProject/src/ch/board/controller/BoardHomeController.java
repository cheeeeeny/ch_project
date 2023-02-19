package ch.board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch.common.model.service.BoardService;
import ch.common.model.service.MemberService;
import ch.common.model.vo.BoardVo;
import ch.common.model.vo.MemberVo;

/**
 * Servlet implementation class BoardHomeController
 */
@WebServlet("/boardhome")
public class BoardHomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardHomeController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("./WEB-INF/view/board/boardhome").forward(request, response);
		//ArrayList<BoardVo> result = new BoardService().selecList();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 전송받은 데이터값 불러오기 : id/pw 데이터를 가지고 온다.
				BoardVo vo = new BoardVo();
				System.out.println("전송받은데이터 값 불러옴");

				// 2. DB 다녀오기 (JdbcTemplate - DTO/VO - DAO - Service - Controller 순으로 작성)
				ArrayList<BoardVo> result = new BoardService().selecList();

				// 3. 페이지 이동 및 데이터 전달
					response.sendRedirect(request.getContextPath() + "/boardhome");
				
	}

}
