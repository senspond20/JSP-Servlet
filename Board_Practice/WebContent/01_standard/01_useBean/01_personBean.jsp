<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>JSP표준액션 태그 중 useBean을 사용하여 VO클래스의 객체 정보 불러와보기</h2>
	<jsp:useBean id="person1" class ="action.model.vo.Person" scope ="request"></jsp:useBean>
	
	<!--  해당 스코프 안에서 속성값이 해당 클래스 타입으로 존재하면, 그 객체를 가지고 오고 없으면 새로 생성 -->
	Person person1 = new Person();
	
	이름 : <jsp:getProperty property ="name" name = "person1" /><br>
	성별 : <jsp:getProperty property ="gender" name = "person1" /><br>
	나이 :  <jsp:getProperty property ="age" name = "person1" /><br>
	
	
</body>
</html>