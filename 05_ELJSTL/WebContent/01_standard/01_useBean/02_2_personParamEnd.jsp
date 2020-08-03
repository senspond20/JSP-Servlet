<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); %>
<!-- 그냥하면 꺠진다 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>JSP표준액션태그 중 useBean의 param 속성 이용하기</h2>
	<jsp:useBean id="person" class ="action.model.vo.Person">
	
<!-- 	정석 -->
<%-- 		<jsp:setProperty property ="name" name ="person" param="name" /> --%>
<%-- 		<jsp:setProperty property ="gender" name = "person" param="gender" /> --%>
<%-- 		<jsp:setProperty property ="nai" name ="person" param ="nai" /> --%>

<!-- Param 과 Property가 동일할때 Param을 생략하면 자동으로 Param에 property 값이 매핑되어 들어간다. -->
<%-- 		<jsp:setProperty property ="name" name ="person" /> --%>
<%-- 		<jsp:setProperty property ="gender" name = "person"/> --%>
<%-- 		<jsp:setProperty property ="nai" name ="person" /> --%>

<!-- 더 간단히 아스트로(*) < 와일드카드 > 자동매핑 -->
			<jsp:setProperty property ="*" name ='person'/>
	</jsp:useBean>
	
	<p>정보출력</p>
	이름 : <jsp:getProperty property="name" name="person" /><br>
	성별 : <jsp:getProperty property="gender" name="person" /><br>
	나이 : <jsp:getProperty property="nai" name="person" /><br>
	
	
	

</body>
</html>