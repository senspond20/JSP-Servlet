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
	<h2>jst1 fmt</h2>
	<p>날짜, 시간, 숫자 데이터의 출력 형식을 지정할 때 사용</p>
	
	<h3>숫자 데이터 포맷 지정 : formatNumber태그</h3>
	
	천단위 구분 기호 적용 : <fmt:formatNumber value ="123456789" /><br>
	<fmt:formatNumber value="123456789" groupingUsed ="true" /><br>
	<fmt:formatNumber value="123456789" groupingUsed ="false" /><br>
	
	<br>
	
	<b>실수값 소수점 아래 자리수 지정 : pattern 속성 사용</b><br>
	#을 사용한 경우 : <fmt:formatNumber value ="1.234567" pattern ="#.##" /><br>
	#을 사용한 경우 : <fmt:formatNumber value ="1.2" pattern ="#.##" /><br>
	0을 사용한 경우 : <fmt:formatNumber value ="1.2" pattern ="#.00" /> <br>
	
	<fmt:setLocale value ="ko_kr" />
		
	
	
	<h3>type속성으로 백분율, 통화기호처리</h3>
		<fmt:formatNumber value ="0.12" type ="percent" /><br>
		<fmt:formatNumber value ="123456789" type ="currency" /><br>
		<fmt:formatNumber value ="123456789" type ="currency" currencySymbol ="$" />
		
		
	</body>
</html>