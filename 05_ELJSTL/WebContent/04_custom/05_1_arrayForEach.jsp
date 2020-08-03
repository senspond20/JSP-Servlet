<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String[] nameArr = {"신형민", "봉미선","신짱구","신짱아"};
		request.setAttribute("famliy", nameArr);
	%>
	<jsp:forward page ="05_2_arrayForEachEnd.jsp"/>
	
	
</body>
</html>