<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>secondPage.jsp<hr>
	name: ${name }<br> <!-- 작은 범위에 있는게 우선시 (session)-->
	page: <%= pageContext.getAttribute("name") %><br>
	request: <%= request.getAttribute("name") %><br>
	session: <%= session.getAttribute("name") %><br>
	application: <%= application.getAttribute("name") %> <hr>
	
	<a href="thirdPage.jsp">thirdPage.jsp</a><hr>
	session : ${se }<br>	
</body>
</html>