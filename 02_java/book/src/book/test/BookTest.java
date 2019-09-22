package book.test;

import java.util.List;

import book.dao.BookDaoIf;
import book.dao.BookDaoImpl;
import book.dao.CodeDaoIf;
import book.dao.CodeDaoImpl;
import book.vo.Book;
import book.vo.Code;

/**
 * 서블릇으로 구현하는 컨트롤러 작성 전
 * DAO 클래스의 정상 작동 확인을 위한 테스트 클래스
 * @author admin
 *
 */

public class BookTest {

	public static void main(String[] args) {
		// 1. dao 객채를 얻어냄
		BookDaoIf dao = new BookDaoImpl();
		
		// 2. 전체 목록 조회 테스트
		List<Book> books = dao.select(null);
		
		System.out.println("== 1. 전체 목록 조회 테스트 ==");
//		System.out.println(books);
		
		for (Book book: books) {
			System.out.println(book);
		}
		
		CodeDaoIf codeDao = new CodeDaoImpl();
		
		List<Code> codes = codeDao.selectCompanies();
		
		for (Code code: codes) {
			System.out.println(code);
		}
	}

}
