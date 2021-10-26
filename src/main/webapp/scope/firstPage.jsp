<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>firstPage.jsp <hr>
<!-- 
	page: 현재 페이지에서만 유지되는 값
	request: 현재 페이지 또는 다음 페이지까지 유지되는 값
		단, request는 다음 페이지까지 전달하고자 하면  forword 사용해야한다.
	session: 웹 브라우저가 살아있는 동안 유지된다.
	application: 서버가 살아있는 동안 유지된다.
 -->
 
	<%
		pageContext.setAttribute("name", "page value"); //key와 value
		request.setAttribute("name", "request value");
		session.setAttribute("name", "session value");
		application.setAttribute("name", "application value");
		
		//request.getRequestDispatcher("secondPage.jsp").forward(request, response);
		//PrintWriter p = response.getWriter(); //시용자에게 응답
		//p.println("안녕하세요");
	%>
	name: ${name }<br> <!-- 작은 범위에 있는게 우선시 (page) -->
	page: <%= pageContext.getAttribute("name") %>
			, ${pageScope.name }<br>
	request: <%= request.getAttribute("name") %>
			, ${requestScope.name }<br>
	session: <%= session.getAttribute("name") %>
			, ${sessionScope.name }<br>
	application: <%= application.getAttribute("name") %>
			, ${applicationScope.name } <hr>
	<a href="secondPage.jsp">secondPage.jsp</a><hr>
	<c:set var="se" value="세션설정값입니다." scope="session"/>
	session : ${se }<br>	
</body>
</html>