package book.exception;

import book.vo.Book;

/**
 * Book 데이터 수정, 조회, 삭제 작업 중
 * 대상 도서가 존재하지 않을 경우
 * 발생시킬 예외 정의 클래스
 * 
 * @author admin
 *
 */
public class NotFoundException extends Exception {

	// 기본 생정자
	public NotFoundException() {
		super("도서정보가 존재하지 않습니다.");
	}
	
	// 중복정의 생성자
	public NotFoundException(String type, Book book) {
		super(String.format("%s:[bookSeq:%d] 도서 정보가 존재하지 않습니다.", type, book.getBookSeq()));
	}
}
