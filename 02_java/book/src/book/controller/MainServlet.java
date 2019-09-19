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
		System.out.println("action=" + action);
		
		
		// 2. 서브 컨트롤러 분기
		if ("select".equals(action)) {
			select(request, response);
			
		} else if ("detail".equals(action)) {
			detail(request, response);
			
		} else if ("update".equals(action)) {
			update(request, response);
		}
		
	}

	/**
	 * 도서 정보 1건을 수정하는 메소드
	 * GET 으로 들어올 시 수정을 위한 화면 제공
	 * POST 로 들어올 시 수정 내용을 반영
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. GET, POST 중 어떤 HTTP 메소드로 들어왔는지 추출
		String method = request.getMethod();
		
		if ("GET".equals(method)) {
			// 2. GET 으로 진입할 경우 수정을 위한 화면 제공
			// (1) 요청으로 전달된 파라미터중 bookSeq 추출
			int bookSeq = Integer.valueOf(request.getParameter("bookSeq"));
			
			// (2) bookSeq 에 해당하는 북 객체 1건 조회
			BookDaoIf dao = new BookDaoImpl();
			
			Book book = new Book();
			book.setBookSeq(bookSeq);
			List<Book> books = dao.select(book);
			
			// (3) 조회된 Book 객체 요청에 추가
			request.setAttribute("book", books.get(0));
			
			// (4) 수정 가능한 화면으로 이동
			String content = "/updateBook";
			request.setAttribute("content", content);
			
			String view = "/index";
			request.getRequestDispatcher(view).forward(request, response);
			
		} else if ("POST".equals(method)) {
			// 3. POST 로 진입한 경우 수정된 내용을 DB에 반영
			
		}
	}

	/**
	 * 도서 정보 1건 상세보기
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void detail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. bookSeq 파라미터 추출 (String 으로 받아지는 파라미터 int 로 변환)
		int bookSeq = Integer.valueOf(request.getParameter("bookSeq"));
		
		// 2. dao 객체 얻기
		BookDaoIf dao = new BookDaoImpl();
		
		// 3. dao 객체에 1건 조회 실행
		// (1)1건 조회에 사용할 책 일련번호가 담길 비어있는 Book 객체 생성
		Book book = new Book();
		// (2)비어있는 Book 객체에 책 일련번호 설정
		book.setBookSeq(bookSeq);
		// (3)select() 메소드에 책 일련번호가 담긴 객체 전달하여 1건 조회 쿼리로 작동하도록 함
		List<Book> books = dao.select(book);
		// --> 위에서 받아진 books 목록에는 1건의 조회 결과만 담김
		
		// 4. 얻어진 도서 정보 1건 요청 객체에 추가
		request.setAttribute("book", books.get(0));
		
		// 5. 도서 정보 1건 상세보기 페이지로 이동
		// (1) index.jsp 의 컨텐트 영역에 표시할 JSP 주소를 content 라는 이름으로 추가
		String content = "/detailBook";
		request.setAttribute("content", content);
		
		// (2) /index 주소로 요청 forward (메인 화면으로 돌려보냄)
		String view = "/index";
		request.getRequestDispatcher(view).forward(request, response);
		
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
