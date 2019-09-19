package book.dao;

import static book.mybatis.MybatisClient.getFactory;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import book.exception.NotFoundException;
import book.mapper.BookMapper;
import book.vo.Book;
import book.vo.Code;

/**
 * 도서 정보를 저장하는 Book 테이블에 여러 CRUD를
 * Mybatis 구현으로 작업하는 DAO 구현 클래스
 * 
 * @author admin
 *
 */

public class BookDaoImpl implements BookDaoIf {

	/**
	 * 마이바티즈 DB 연결을 위하여 사용하는
	 * SqlSessionFactory 변수
	 */
	private SqlSessionFactory factory;
	
	
	public BookDaoImpl() {
		super();
		// getFactory() 메소드는 static 메소드이므로
		// static import 하여 사용하거나
		// 클래스명.메소드명() 으로 사용
		factory = getFactory();
	}

	@Override
	public List<Book> select(Book book) {
		
		// 전체 목록이 담길 리스트 변수 선언(리턴에 사용 할)
		List<Book> books = null;
		
		// Mybatis 로 DB 연결하여 쿼리를 실행하기 위해서
		// Sqlsession 이 필요함.
		// Sqlsession 은 반드시 메소드 안에서 선언하는
		// 지역변수로만 사용하는 것이 규칙
		SqlSession session = factory.openSession();
		
		try {
			// 1. 매퍼 인터페이스 객체 세션으로부터 얻기
			BookMapper mapper = session.getMapper(BookMapper.class); 
			
			// 2. 얻어진 메퍼 인터페이스 객체에 메소드 호출하여
			//	   쿼리 조회 결과 얻기
			books = mapper.select(book);
			
		} finally {
			session.close();
		}
		
		return books;
	}

	@Override
	public List<Book> searchByCompanyCd(Code code) {
		// 전체 목록이 담길 리스트 변수 선언(리턴에 사용 할)
		List<Book> books = null;
		
		// Mybatis 로 DB 연결하여 쿼리를 실행하기 위해서
		// Sqlsession 이 필요함.
		// Sqlsession 은 반드시 메소드 안에서 선언하는
		// 지역변수로만 사용하는 것이 규칙
		SqlSession session = factory.openSession();
		
		try {
			// 1. 매퍼 인터페이스 객체 세션으로부터 얻기
			BookMapper mapper = session.getMapper(BookMapper.class); 
			
			// 2. 얻어진 메퍼 인터페이스 객체에 메소드 호출하여
			//	   쿼리 조회 결과 얻기
			books = mapper.searchByCompanyCd(code);
			
		} finally {
			session.close();
		}
		
		return books;
	}

	@Override
	public List<Book> searchByBelowPrice(int price) {
		// 전체 목록이 담길 리스트 변수 선언(리턴에 사용 할)
		List<Book> books = null;
		
		// Mybatis 로 DB 연결하여 쿼리를 실행하기 위해서
		// Sqlsession 이 필요함.
		// Sqlsession 은 반드시 메소드 안에서 선언하는
		// 지역변수로만 사용하는 것이 규칙
		SqlSession session = factory.openSession();
		
		try {
			// 1. 매퍼 인터페이스 객체 세션으로부터 얻기
			BookMapper mapper = session.getMapper(BookMapper.class); 
			
			// 2. 얻어진 메퍼 인터페이스 객체에 메소드 호출하여
			//	   쿼리 조회 결과 얻기
			books = mapper.searchByBelowPrice(price);
			
		} finally {
			session.close();
		}
		
		return books;
	}

	@Override
	public List<Book> searchByPrice(Map<String, Integer> priceMap) {
		// 전체 목록이 담길 리스트 변수 선언(리턴에 사용 할)
		List<Book> books = null;
		
		// Mybatis 로 DB 연결하여 쿼리를 실행하기 위해서
		// Sqlsession 이 필요함.
		// Sqlsession 은 반드시 메소드 안에서 선언하는
		// 지역변수로만 사용하는 것이 규칙
		SqlSession session = factory.openSession();
		
		try {
			// 1. 매퍼 인터페이스 객체 세션으로부터 얻기
			BookMapper mapper = session.getMapper(BookMapper.class); 
			
			// 2. 얻어진 메퍼 인터페이스 객체에 메소드 호출하여
			//	   쿼리 조회 결과 얻기
			books = mapper.searchByPrice(priceMap);
			
		} finally {
			session.close();
		}
		
		return books;
	}

	@Override
	public List<Book> searchByOverPrice(int price) {
		// 전체 목록이 담길 리스트 변수 선언(리턴에 사용 할)
		List<Book> books = null;
		
		// Mybatis 로 DB 연결하여 쿼리를 실행하기 위해서
		// Sqlsession 이 필요함.
		// Sqlsession 은 반드시 메소드 안에서 선언하는
		// 지역변수로만 사용하는 것이 규칙
		SqlSession session = factory.openSession();
		
		try {
			// 1. 매퍼 인터페이스 객체 세션으로부터 얻기
			BookMapper mapper = session.getMapper(BookMapper.class); 
			
			// 2. 얻어진 메퍼 인터페이스 객체에 메소드 호출하여
			//	   쿼리 조회 결과 얻기
			books = mapper.searchByOverPrice(price);
			
		} finally {
			session.close();
		}
		
		return books;
	}

	@Override
	public List<Book> searchByAll(String keyword) {
		// 전체 목록이 담길 리스트 변수 선언(리턴에 사용 할)
		List<Book> books = null;
		
		// Mybatis 로 DB 연결하여 쿼리를 실행하기 위해서
		// Sqlsession 이 필요함.
		// Sqlsession 은 반드시 메소드 안에서 선언하는
		// 지역변수로만 사용하는 것이 규칙
		SqlSession session = factory.openSession();
		
		try {
			// 1. 매퍼 인터페이스 객체 세션으로부터 얻기
			BookMapper mapper = session.getMapper(BookMapper.class); 
			
			// 2. 얻어진 메퍼 인터페이스 객체에 메소드 호출하여
			//	   쿼리 조회 결과 얻기
			books = mapper.searchByAll(keyword);
			
		} finally {
			session.close();
		}
		
		return books;
	}

	@Override
	public int insert(Map<String, Object> map) {

		// 1. 리턴할 인서트 성공 카운트 변수
		int addCnt = -1;
		
		// 2. auto-commit 옵션으로 열린 SqlSession 을 통해서
		//	  insert 수행
		SqlSession session = factory.openSession(true);
		
		// 3. Mapper 인터페이스 객체 얻어냄
		BookMapper mapper = session.getMapper(BookMapper.class);
		
		try {
			addCnt = mapper.insert(map);
			
		} finally {
			session.close();
		}
		
		return addCnt;
	}

	@Override
	public int update(Map<String, Object> map) throws NotFoundException {

		// 1. 수정하려는 데이터가 존재하는지 검사
		int bookSeq = ((Integer) map.get("bookSeq")).intValue();
		
		if (!isExists(bookSeq)) {
			Book book = new Book();
			book.setBookSeq(bookSeq);
			
			throw new NotFoundException("update", book);
		}
		
		// 2. 수정 결과 카운트 변수
		int updateCnt = -1;
		
		// 3. SqlSession 얻기
		SqlSession session = factory.openSession(true);
		
		// 4. 매퍼 인터페이스 객체 얻기
		BookMapper mapper = session.getMapper(BookMapper.class);
		
		// 5. 쿼리 실행
		try {
			updateCnt = mapper.update(map);
		
		} finally {
			session.close();
		}
		
		
		return updateCnt;
	}

	@Override
	public int delete(Book book) throws NotFoundException {
		// 1. 삭제하려는 데이터가 존재하는지 검사
		
		if (!isExists(book.getBookSeq())) {
			throw new NotFoundException("delete", book);
		}
		
		// 2. 수정 결과 카운트 변수
		int deleteCnt = -1;
		
		// 3. SqlSession 얻기
		SqlSession session = factory.openSession(true);
		
		// 4. 매퍼 인터페이스 객체 얻기
		BookMapper mapper = session.getMapper(BookMapper.class);
		
		// 5. 쿼리 실행
		try {
			deleteCnt = mapper.delete(book);
		
		} finally {
			session.close();
		}
		
		return deleteCnt;
	}

	

	
	/**
	 * 입력된 책 일련번호에 해당하는 데이터가 존재하는지 검사하여
	 * 있으면 true, 없으면 false 를 리턴하는 메소드
	 * @param bookSeq
	 * @return
	 */
	private boolean isExists(int bookSeq) {

		boolean exists = false;
		
		// 1. sqlSession 얻기
		SqlSession session = factory.openSession();
		
		// 2. 매퍼 인터페이스 객체 얻기
		BookMapper mapper = session.getMapper(BookMapper.class);
		
		// 3. 쿼리 실행
		try {
			Book book = new Book();
			book.setBookSeq(bookSeq);
			
			int seq = mapper.isExists(book);
			
			if (seq > 0) {
				// 검색된 책의 일련번호가 0보다 크면 존재한다는 뜻
				exists = true;
			}
			
		} finally {
			session.close();
		}
		
		return exists;
	}
}
