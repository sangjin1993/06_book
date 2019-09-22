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

<form action="${contextPath}main?action=insert" method="post">
	<table>
		<tr>
			<th colspan="2">도서 정보 입력</th>
		</tr>
		<tr>
			<th>일련번호</th>
			<td>시스템 자동 부여</td>
		</tr>
		<tr>
			<th>ISBN</th>
			<td><input type="text" value="" name="isbn" /></td>
		</tr>
		<tr>
			<th>제목</th>
			<td><input type="text" name="title" value="" /></td>
		</tr>
		<tr>
			<th>저자</th>
			<td><input type="text" name="author" value="" /></td>
		</tr>
		<tr>
			<th>내용소개</th>
			<td><textarea name="content" cols="60" rows="15" ></textarea></td>
		</tr>
		<tr>
			<th>출판사</th>
			<td>
				<c:forEach var="code" items="${codes}">
					<input type="radio" name="companyCd" value="${code.code}" id="${code.code}" checked="checked" /> -->
 				<labal for="${code.code}">${code.codeVal}</labal>
				</c:forEach>
<!-- 				<input type="radio" name="companyCd" value="1001" id="1001" checked="checked" /> -->
<!-- 				<labal for="1001">창비</labal> -->
			
<!-- 				<input type="radio" name="companyCd" value="1002" id="1002" checked="checked"/> -->
<!-- 				<labal for="1002">더 스토리</labal> -->
			
<!-- 				<input type="radio" name="companyCd" value="1003" id="1003" checked="checked" /> -->
<!-- 				<labal for="1003">위즈덤</labal> -->
			
<!-- 				<input type="radio" name="companyCd" value="1004" id="1004" checked="checked" /> -->
<!-- 				<labal for="1004">흔</labal> -->
			
<!-- 				<input type="radio" name="companyCd" value="1005" id="1005" checked="checked" /> -->
<!-- 				<labal for="1005">북 하우스</labal> -->
			</td>
		</tr>
		<tr>
			<th>페이지 수</th>
			<td><input type="text" name="totalPage" value="" /></td>
		</tr>
		<tr>
			<th>가격</th>
			<td>
				<input type="number" name="price"" value="" />
			</td>
		</tr>
		<tr>
			<th>재고수량</th>
			<td><input type="number" name="quantity" value="" /></td>
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