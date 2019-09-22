package book.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;

/**
 * 서블릿 서비스에 진입하는 요청에 대해서
 * 요청객체, 응답객체에 한글 설정을 하는 인코딩 필터 클래스
 * 
 * web.xml 에 <filter> 로 등록하거나
 * -----------------------------------------
 * @WebFilter 애노테이션으로 등록해서 사용
 *  - filterName = encodingFilter
 *  
 *  두 개의 초기화 파라미터를 넘겨서 필터 초기화
 *  - initParams
 *  charEncoding : utf-8
 *  contentType : text/html: charset=utf-8
 *  
 *  필터가 작동할 주소 형태 등록
 *  - urlPatterns : /*
 *  				==> 이 서비스(웹 어플리케이션)의
 *  				==> 컨텍스트 패스 이하로 들어오는 모든 요청 주소에 대해서
 *  				==> 이 필터가 작동한다.
 */
@WebFilter(filterName = "encodingFilter"
		 , initParams = {@WebInitParam(name="charEncoding", value = "utf-8")
		               , @WebInitParam(name = "contentType", value = "text/html; charset=utf-8")}
		 , urlPatterns = {"/*"})
public class EncodingFilter implements Filter {

	// 이 필터가 사용할 필터 설정값을 저장하는 멤버 변수
	private FilterConfig config;
	
	/**
	 * 필터의 초기화를 담당하는 메소드
	 */
	@Override
	public void init(FilterConfig config) throws ServletException {
		this.config = config;
		/*-----------------------------------------------
		 * 필터의init() 메소드는 웹 컨테이너(톰캣)에 의해
		 * 필터 초기화시에 자동으로 작동되는 필터 라이프 사이클 메소드
		 * 
		 * init() 이 호출될 때, 웹 컨테이너(톰캣, 서블릿 컨테이너)는 
		 * web.xml 에 <filter> 로 설정된 내용 혹은 @WebFilter 로
		 * 설정된 내용을 읽어서 이 메소드 매개변수로 전달한다.
		 * 
		 * 이렇게 전달된 필터 설정 값을 멤버 변수로 저장하여 사용한다.
		 * -----------------------------------------------
		 */
	}
	
	/**
	 * 필터 클래스의 가장 핵심적인 메소드
	 * 필터는 항상 여러개가 존재할 수 있기 때문에 
	 * 전처리 후 다음 필터, 혹은 다음 필터가 없어서 서블릿으로 요청이 진입되어야 하는 경우
	 * chain.doFilter(요청, 응다1); 로 호출한다.
	 * 
	 * 이 때, 다음 필터나 다음 서블릿을 요청하는 doFilter() 호출
	 * 윗줄에 쓰여진 코드는 자동으로 전처리 코드로 인식되고
	 * 아랫줄에 쓰여진 코드는 자동으로 후처리 코드로 인식된다.
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// 1. 전처리 위치 : doFilter() 호출 전에 작성
		System.out.println("==== 1.(1) 인코딩 필터 진입 ====");
		// (1) 요청 객체에 한글 설정 : 인코딩 설정
		//     config 객체에서 인코딩 값 추출
		String charEncoding = config.getInitParameter("charEncoding");
		request.setCharacterEncoding(charEncoding);
		
		// (2) 응답 객체에 컨텐츠 타입 설정
		//     config 객체에서 초기화 파라미터로 넘긴 컨텐트 타입 값 추출
		String contentType = config.getInitParameter("contentType");
		response.setContentType(contentType);
		
		// (3) 값 확인을 위한 출력
		System.out.println("charEncoding:" + charEncoding);
		System.out.println("contentType" + contentType);
		
		// 다음 필터(혹은 서블릿) 으로 요청, 응답 객체를 전달
		chain.doFilter(request, response);
		
		// 2. 후처리 위치 : doFilter() 호출 구문 뒤에 작성
		System.out.println("==== 1.(2) 인코딩 필터 종료 ====");
	}
	
	@Override
	public void destroy() {
		// config 멤버 변수를 null 로 초기화시킴
		this.config = null;
	}

}
