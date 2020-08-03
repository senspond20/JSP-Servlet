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
		int first = Integer.parseInt(request.getParameter("firstNum"));
		int second = Integer.parseInt(request.getParameter("secondNum"));
		int result = 0;
		
		for(; first <= second; first++){
			result += first;
		}
// 		for(int i = first; i <= second; i++){
// 			result += i;
// 		}
		request.setAttribute("result", result);
	%>
	
<!-- 	포워드는 화면만 변화시키고 url은 이동시키지 않는다. -->
	<jsp:forward page ="01_3_sumView.jsp" />
	

	
</body>
</html>