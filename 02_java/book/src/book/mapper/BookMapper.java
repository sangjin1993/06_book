package book.mapper;

import java.util.List;
import java.util.Map;

import book.vo.Book;
import book.vo.Code;

public interface BookMapper {

	public abstract List<Book> select(Book book); 
	
	public abstract List<Book> searchByCompanyCd(Code code);
	
	public abstract List<Book> searchByBelowPrice(int price);
	
	public abstract List<Book> searchByPrice(Map<String, Integer> priceMap);
	
	public abstract List<Book> searchByOverPrice(int price);
	
	public abstract List<Book> searchByAll(String keyword);
	
	public abstract int insert(Map<String, Object> map);
	
	public abstract int update(Map<String, Object> map);
	
	public abstract int delete(Book book);
	
	public abstract int isExists(Book book);
	
}
