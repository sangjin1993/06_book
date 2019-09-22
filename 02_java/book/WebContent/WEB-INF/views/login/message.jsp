<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 2초 후에 url 에 명시된 다음페이지로 GET 요청을 보냄, 화면 리프레시 작용 -->
<meta http-equiv="refresh" content="2;url=${requestScope.nextPage}">

<title>Insert title here</title>
</head>
<body>
${requestScope.message}

</body>
</html>