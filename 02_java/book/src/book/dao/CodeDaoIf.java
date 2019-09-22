package book.dao;

import java.util.List;

import book.vo.Code;

/**
 * CODE 테이블에 access 하는 기능을 모아둔 인터페이스
 * @author admin
 *
 */

public interface CodeDaoIf {

	List<Code> selectCompanies();
}
