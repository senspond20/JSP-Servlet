<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 01_2_sumCalc.jsp?firstNum=124&secondNum=124 -->
	<%
// 	 url에 있는 쿼리스트링떄문에 다시 파라미터를 가져온다. 
		String firstNum = request.getParameter("firstNum");
		String secondNum = request.getParameter("secondNum");
		int result = (int)request.getAttribute("result");
	%>
	<%= firstNum%>부터 <%= secondNum %>까지의 합은?<br>
	결과 값 : <span style ="color:pink"><%= result %></span>
</body>
</html>