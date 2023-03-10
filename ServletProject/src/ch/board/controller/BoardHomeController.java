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
	
	private BoardService service = new BoardService();
       
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
		String aaa = getInitParameter("aaa");
		//2. DB다녀오기 DTO/VO, DAO, SERVICE, CONTROLLER, VIEW
		//paging 처리 
		//1. 총 글 갯수 알아오기(중요)-db에서 
			int cnt = 0; 
			cnt = service.getCountBoard(); 
		//2. 한 페이지에 나타낼 글 수 - 한 페이지에 3개 (보통10개)
			int pageSize = 3;
		//3. 보여페이지에 수  - 2개(보통 5~10개) : <이전 1 , 2 이후>
			int pageBlock = 2;
		//4. 현재페이지 
			int currentPage = 1; //default 1, 페이지 클릭시 변경	
			try {
				currentPage = Integer.parseInt(aaa);    //Integer는 try -catch사용 (catch안하고 default값으로 돌아갈 수도 있다.)
			} catch (Exception e) {
				
			}
		//5. row num 범위정하기
			int startRnum = 0;
			int endRnum = 0;
			startRnum = ((currentPage-1) * pageSize) + 1;  //1-1(1페이지에 1~3) , 2-4(2페이지에 4~6)
			endRnum = (startRnum+pageSize-1 > cnt) ? cnt : startRnum+pageSize-1 ; //삼항연산자로 표현
			System.out.println(startRnum);
			System.out.println(endRnum);
			request.setAttribute("boardlist", service.getBoardList(startRnum,endRnum));
			
			
		//6. 페이지 범위 정하기
			int startPageNum = 0;
			int endPageNum = 0;
			//시작 페이지 찾기 : 현재페이지
			startPageNum = (currentPage % pageBlock == 0) 
						? ((currentPage / pageBlock -1) * pageBlock + 1) 
						: ((currentPage / pageBlock) * pageBlock + 1) ;
			//총 페이지수
			int pageCnt = (cnt/pageSize) + (cnt%pageSize == 0 ? 0 : 1);
//   		=if(cnt%pageSize != 0) {
//				pageCnt++;
//			}
			endPageNum = (startPageNum + pageBlock -1 > pageCnt) ? pageCnt : startPageNum + pageBlock -1;
			
			request.setAttribute("startPageNum",startPageNum);
			request.setAttribute("endPageNum",endPageNum);
			request.setAttribute("currentPage",currentPage);
			request.setAttribute("pageCnt",pageCnt);
			
			
			//request.setAttribute("boardlist", service.getBoardList());
		  //request.setAttribute("boardlist", new BoardService().getBoardList());
		request.getRequestDispatcher("/WEB-INF/view/board/boardhome.jsp").forward(request, response);
		
		
		//내정보 불러오기
		//1. 들고들어가는 데이터가 없으므로 getPrameter는 없지만  Session은 읽어와야한다.
				String id = null;
				if(request.getSession().getAttribute("lgnss") != null) {
					id = ((MemberVo)(request.getSession().getAttribute("lgnss"))).getId();
				}
				
				//2. 나의 id에 해당하는 정보를 db에서 읽어오기
				if(id != null) {
					request.setAttribute("myinfo", new MemberService().myinfo(id));
					request.getRequestDispatcher("/WEB-INF/view/board/boardhome.jsp").forward(request, response); 
				}
				else {
					// 방법 1) 로그인 정보가 없을 때, 많은 jsp페이지에서 같은 코드를 작성해야하는 불편함이 있음
					// request.getRequestDispatcher("/WEB-INF/view/member/myinfo.jsp").forward(request, response); 
					
					// 방법 2)  로그인 정보가 없을 때, 하나의 error page를 만들어줌
					request.setAttribute("errorMsg", "로그인되지 않아 내정보를 확인할 수 없습니다.");
//					request.getRequestDispatcher("/WEB-INF/view/error/errorLogin.jsp").forward(request, response); 
				}
		
		
	}
		//TODO 게시판 번호가 홀수이면 일반 짝수이면 커뮤니티 게시판

}
