package ch.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import ch.common.model.service.MemberService;
import ch.common.model.vo.MemberVo;
import ch.common.model.dao.MemberDao;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/view/tripwithme.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 1. 전송받은 데이터값 불러오기 : id/pw 데이터를 가지고 온다.
		MemberVo vo = new MemberVo();
//		String id = request.getParameter("id");
//		String passwd = request.getParameter("passwd");
		vo.setId(request.getParameter("id"));
		vo.setPasswd(request.getParameter("passwd"));
		System.out.println("로그인데이터값 불러옴 : " + vo);

		// 2. DB 다녀오기 (JdbcTemplate - DTO/VO - DAO - Service - Controller 순으로 작성)
		MemberVo result = new MemberService().login(vo);
		// 3. 페이지 이동 및 데이터 전달
		if (result != null) {
			System.out.println("로그인성공");
			response.sendRedirect(request.getContextPath() + "/main");
		} else {
			System.out.println("로그인실패");
			response.sendRedirect(request.getContextPath() + "/lo.error");
		}


	}

}
