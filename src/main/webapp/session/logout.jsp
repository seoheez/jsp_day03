<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>logout.jsp<hr>
	
	<%
	
	//session.removeAttribute("loginUser"); //특정 세션만 만료
	//session.setMaxInactiveInterval(5); //5초 후 모든 세션 만료
	session.invalidate(); //모든 세션 만료
	
	%>
	<a href="login.jsp">로그인 이동</a>
	<a href="main.jsp">main 이동</a>
	
		<c:if test="${loginUser == null }">
		<script>
			alert("로그인 먼저 진행하세요!!!");
			location.href='login.jsp'
		</script>

	</c:if>
</body>
</html>