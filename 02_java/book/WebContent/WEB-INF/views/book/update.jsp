<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="${contextPath}main?action=update" method="post">
	<table>
		<tr>
			<th colspan="2">도서 정보 수정</th>
		</tr>
		<tr>
			<th>일련번호</th>
			<td>${requestScope.book.bookSeq}
			<!-- /main?action=update&bookSeq=1 와 같은 GET 요청이 생성됨 -->
			<input type="hidden" name="bookSeq" value="${requestScope.book.bookSeq}" />	
			</td>
		</tr>
		<tr>
			<th>ISBN</th>
			<td><input type="text" value="${book.isbn}" name="isbn" /></td>
		</tr>
		<tr>
			<th>제목</th>
			<td><input type="text" name="title" value="${book.title}" /></td>
		</tr>
		<tr>
			<th>저자</th>
			<td><input type="text" name="author" value="${book.author}" /></td>
		</tr>
		<tr>
			<th>내용소개</th>
			<td><textarea name="content" cols="60" rows="15" >${book.content}"</textarea></td>
		</tr>
		<tr>
			<th>출판사</th>
			<td>
<!-- 			(input[type="radio" name="companyCd" value="100$" id="100$"]+labal[for="100$"]{출판사이름})*5 -->
			<c:if test="${book.companyCd eq 1001}">
				<input type="radio" name="companyCd" value="1001" id="1001" checked="checked" />
				<labal for="1001">창비</labal>
			</c:if>
			<c:if test="${book.companyCd ne 1001}">
				<input type="radio" name="companyCd" value="1001" id="1001"/>
				<labal for="1001">창비</labal>
			</c:if>
			
			<c:if test="${book.companyCd eq 1002}">
				<input type="radio" name="companyCd" value="1002" id="1002" checked="checked"/>
				<labal for="1002">더 스토리</labal>
			</c:if>
			<c:if test="${book.companyCd ne 1002}">
				<input type="radio" name="companyCd" value="1002" id="1002"/>
				<labal for="1002">더 스토리</labal>
			</c:if>
			
			<c:if test="${book.companyCd eq 1003}">
				<input type="radio" name="companyCd" value="1003" id="1003" checked="checked" />
				<labal for="1003">위즈덤</labal>
			</c:if>
			<c:if test="${book.companyCd ne 1003}">
				<input type="radio" name="companyCd" value="1003" id="1003"/>
				<labal for="1003">위즈덤</labal>
			</c:if>
			
			<c:if test="${book.companyCd eq 1004}">
				<input type="radio" name="companyCd" value="1004" id="1004" checked="checked" />
				<labal for="1004">흔</labal>
			</c:if>
			<c:if test="${book.companyCd ne 1004}">
				<input type="radio" name="companyCd" value="1004" id="1004"/>
				<labal for="1004">흔</labal>
			</c:if>
			
			<c:if test="${book.companyCd eq 1005}">
				<input type="radio" name="companyCd" value="1005" id="1005" checked="checked" />
				<labal for="1005">북 하우스</labal>
			</c:if>
			<c:if test="${book.companyCd ne 1005}">
				<input type="radio" name="companyCd" value="1005" id="1005"/>
				<labal for="1005">북 하우스</labal>
			</c:if>
			</td>
		</tr>
		<tr>
			<th>페이지 수</th>
			<td><input type="text" name="totalPage" value="${book.totalPage}" /></td>
		</tr>
		<tr>
			<th>가격</th>
			<td>
				<input type="number" name="price"" value="${book.price}" />
			</td>
		</tr>
		<tr>
			<th>재고수량</th>
			<td><input type="number" name="quantity" value="${book.quantity}" /></td>
		</tr>
		<tr>
			<th colspan="2">
				<input type="submit" value="저장하기" />
				<input type="reset" value="초기화" />
			</th>
		</tr>
	</table>
</form>

</body>
</html>