package ch.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch.common.model.service.MemberService;

/**
 * Servlet implementation class DupidChkServlet
 */
@WebServlet("/DupidChk.lo")
public class DupidChkServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DupidChkServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 request.getRequestDispatcher("./WEB-INF/view/tripwithme.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberService mservice = new MemberService();
		 int result = mservice.dupIdChk(request.getParameter("id"));
		 PrintWriter out = response.getWriter();
		 
		 if(result > 0) {
		 out.append("fail"); // 만약 dupIdChk()의 결과값이 0 이상이면 ‘fail’
		 } else {
		 out.append("ok"); // 결과값이 0 보다 크지 않으면, ‘ok’를 담아서 보낸다. 
		 }
		 out.flush();
		 out.close();
		 }
		

	}


