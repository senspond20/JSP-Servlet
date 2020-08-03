<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var ="str" value ="How are you?" />
	
	<h2>문자열 관련 함수 태그 : fn</h2>
	<p>el을 통해 처리된 결과 출력 또는 value 속성에 대입</p>
	
	str : ${ str } <br>
	
<!-- 	-fn은 태그로 감싸지 않고 el로 감싸서 사용한다. -->
	모두 대문자 : ${ fn:toUpperCase(str) }<br>
	모두 소문자 : ${ fn:toLowerCase(str) }<br>
	are의 위치는 : ${ fn: indexOf(str, 'are') }<br>
	are을 were로 바꿈 : ${ fn:replace(str, 'are','were') }<br>
	replace 후 str : ${ str }<br>
	문자열 길이 : ${ fn:length(str) }<br>
	
	
</body>
</html>