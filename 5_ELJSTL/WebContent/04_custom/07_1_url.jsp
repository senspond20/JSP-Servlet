<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>주문 내역</h2>
	상품 명 : ${ param.pname }<br>
	수량 : ${ param.pcount }<br>
	옵션1: ${ paramValues.option[0] } <br>
	옵션2: ${ paramValues.option[1] }<br>
</body>
</html>