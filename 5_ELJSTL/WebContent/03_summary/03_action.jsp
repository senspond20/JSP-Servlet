<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>개인정보 입력 결과</h2>
	<table>
		<tr>
			<td>성명</td>
			<td><jsp:getProperty property="name" name="person"/></td>
		</tr>
		<tr>
			<td>성별</td>
			<td><jsp:getProperty property="gender" name="person"/></td>
		</tr>
		<tr>
			<td>나이</td>
			<td><jsp:getProperty property="name" name="person"/></td>
		</tr>
	</table>
</body>
</html>