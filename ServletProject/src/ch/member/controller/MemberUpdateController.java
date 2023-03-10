package ch.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ch.common.model.service.MemberService;
import ch.common.model.vo.MemberVo;

/**
 * Servlet implementation class MemberUpdateController
 */
@WebServlet("/mupdate.lo")
public class MemberUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberUpdateController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 전달받은데이터 읽어 변수에 담기 (변수이름은 vo에 설정한 것과 맞춰주는것이 좋다.)
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		String nickname = request.getParameter("nickname");
		String birth = request.getParameter("birth");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		PrintWriter out = response.getWriter();
		
		MemberVo vo = new MemberVo();
		
		if(vo != null && vo.getEmail().equals(email)) { // 만약 EMAIL 값이 기존값과 일치한다면 수정 실행
			
		vo.setId(id);
		vo.setPasswd(passwd);
		vo.setName(name);
		vo.setNickname(nickname);
		vo.setBirth(birth);
		vo.setPhone(phone);
		vo.setGender(gender);
		vo.setEmail(email);
		System.out.println("Ctrl param : " + vo);
		
		int result = new MemberService().updateMember(vo);
		if(result > 0) {
			System.out.println("회원정보수정 실패");
			response.sendRedirect("index.jsp");
		 } else {
		 out.append("<script>alert('회원 정보 수정 오류!\n 관리자에게 문의하세요!');</script>");
		 } 
		} else {
		 RequestDispatcher view = 
		 request.getRequestDispatcher("view/error/errorPage.jsp");
		 request.setAttribute("msg", "회원 정보 수정 오류 발생!!");
		 view.forward(request, response);
		 }
		 out.flush();
		 out.close();
		 }
		}


