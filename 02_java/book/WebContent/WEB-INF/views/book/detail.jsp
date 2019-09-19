<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- form>table>(tr>th+td)*10 -->
<!-- /main?action=update&bookSeq=1 -->
<form action="${contextPath}main" method="get">
	<table>
		<tr>
			<th colspan="2">도서 정보 상세 보기</th>
		</tr>
		<tr>
			<th>일련번호</th>
			<td>${requestScope.book.bookSeq}
			<!-- /main?action=update&bookSeq=1 와 같은 GET 요청이 생성됨 -->
			<input type="hidden" name="action" value="update"/>
			<input type="hidden" name="bookSeq" value="${requestScope.book.bookSeq}" />	
			</td>
		</tr>
		<tr>
			<th>ISBN</th>
			<td>${book.isbn}</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>${book.title}</td>
		</tr>
		<tr>
			<th>저자</th>
			<td>${book.author}</td>
		</tr>
		<tr>
			<th>내용소개</th>
			<td>${book.content}</td>
		</tr>
		<tr>
			<th>출판사</th>
			<td>${book.companyNm}</td>
		</tr>
		<tr>
			<th>페이지 수</th>
			<td>${book.totalPage}</td>
		</tr>
		<tr>
			<th>가격</th>
			<td><fmt:formatNumber value="${book.price}" type="currency" currencyCode="KRW"></fmt:formatNumber></td>
		</tr>
		<tr>
			<th>재고수량</th>
			<td>${book.quantity}</td>
		</tr>
		<tr>
			<th colspan="2">
				<input type="submit" value="수정하기" />
			</th>
		</tr>
	</table>
</form>


</body>
</html>