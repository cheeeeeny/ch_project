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
import ch.common.model.vo.BoardVo;

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
		// 1. 전달받은데이터 읽어 변수에 담기 (변수이름은 vo에 설정한 것과 맞춰주는것이 좋다.)
		String boardTitle = request.getParameter("boardTitle");
		String boardWriter = request.getParameter("boardWriter");
		String boardContent = request.getParameter("boardContent");

		BoardVo vo = new BoardVo();
		vo.setBoardTitle(boardTitle);
		vo.setBoardWriter(boardWriter);
		vo.setBoardContent(boardContent);

		System.out.println("boardcontroller : " + vo);

		int result = new BoardService().boardWrite(vo);

		if (result < 1) {
			System.out.println("<script>");
			System.out.println("alert('게시글 추가 성공!')");
			System.out.println("location.href='select.do'");
			System.out.println("</script>");
		} else {
			System.out.println("<script>");
			System.out.println("alert('게시글 추가 실패ㅠㅠ')");
			System.out.println("history.back()");
			System.out.println("</script>");
		}

	}
}
// //1. 전달받은데이터 읽어 변수에 담기 (변수이름은 vo에 설정한 것과 맞춰주는것이 좋다.)
//				String boardNum = request.getParameter("boardNum");
//				String boardTitle = request.getParameter("boardTitle");
//				String boardWriter = request.getParameter("boardWriter") ; 
//				String boardContent = request.getParameter("boardContent") ; 
//				String boardOriginalFilename = request.getParameter("boardOriginalFilename") ; 
//				String boardRenameFilename = request.getParameter("boardRenameFilename") ; 
//				String boardDate = request.getParameter("boardDate");  
//				String boardLevel = request.getParameter("boardLevel");  
//				String boardRef = request.getParameter("boardRef");  
//				String boardReplySeq = request.getParameter("boardReplySeq");  
//				String boardReadcount = request.getParameter("boardReadcount");  
//				
//				BoardVo vo = new BoardVo();
//				
//					
//				} 

/*
 * 2단계 : 게시글 입력 폼 페이지에서 넘어온 데이터들을 받아 주자. String boardTitle =
 * request.getParameter("boardTitle"); String boardWriter =
 * request.getParameter("boardWriter"); String boardContent =
 * request.getParameter("boardContent");
 * 
 * //3단계 : DB에 전송을 해 주어야 함. 이 때 DTO 객체의 setter() 메서드의 인자에 //2단계에서 넘겨받은 정보들을
 * 넘겨주자. BoardVo vo = new BoardVo();
 * 
 * vo.setBoardTitle(boardTitle); vo.setBoardWriter(boardWriter);
 * vo.setBoardContent(boardContent);
 * 
 * //4단계 : DTO 객체를 DB에 전송해 주어야 함. int result = new
 * BoardService().boardWrite(vo);
 * 
 */
