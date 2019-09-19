package book.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import book.dao.BookDaoIf;
import book.dao.BookDaoImpl;
import book.vo.Book;

/**
 * 모든 요청을 받아들이는 컨트롤러 서블릿 클래스
 * 프론트 컨트롤러(Front Controller)
 */
@WebServlet("/main")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * 서비스 메소드를 프론트 컨트롤러 메소드를 작성
	 * 모든 서비스는 action 이라는 이름의 파라미터로 수행할 작업을 추가하여 요청될 것.
	 * 
	 * 프론트 컨트롤러는
	 * 1. 공통 작업을 수해
	 * 2. action 값에 따라 서브 컨트롤러로 분기
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 공통작업
		// 요청으로부터 action 파라미터 추출
		String action = request.getParameter("action");
		
		// 2. 서브 컨트롤러 분기
		if ("select".equals(action)) {
			select(request, response);
		}
		
	}

	private void select(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. dao 객체 얻기
		BookDaoIf dao = new BookDaoImpl();
		
		// 2. dao 객체에 목록 조회 메소드 호출 하여 결과 얻기
		List<Book> books = dao.select(null); 
		
		// 3. 얻어진 결과 request 객체에 속성으로 추가
		request.setAttribute("books", books);
		
		// 4. 목록을 보여줄 수 있는 뷰로 forward
		// 메인 환면인 index 로 모든 포워딩을 전달
		String view = "/index";
		
		// 메인 컨텐트 영역에 바꿔 끼울 뷰를 선택
		String content = "/listBook";
		
		// 컨텐트 영역에 끼울 뷰를 속성으로 요첯ㅇ 객체에 추가
		request.setAttribute("content", content);
		
		request.getRequestDispatcher(view).forward(request, response);
		
	}

}
