<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>index.jsp<hr>
<!-- 
	session: 서버에서 관리하는 값
	cookie: 클라이언트가 관리하는 값
 -->
	<h1>CARE_LAB</h1>
	<H3>어서오세요~!</H3>
	<%
		boolean bool = false;
		Cookie[] cookieArr = request.getCookies(); //getCookies를 통해서 사용자가 접근하면 사용자로부터 모든 쿠키값을 얻어옴.
		for(Cookie c : cookieArr){
			out.print("name : "+c.getName()+" : ");
			out.print("value : "+c.getValue()+"<br>");
			if(c.getName().equals("testCookie")){ //쿠키를 갖고있다면 팝업창 열지 않음.
				bool = true;
			}
		}
		/*
		int[] arr = {1,2,3,4,5};
		for(int a : arr){
			out.print(a+"<br>");
		}
		*/
		/*
		for(int i=0; i<cookieArr.length ; ++i){
			out.print("name : "+cookieArr[i].getName()+" : ");
			out.print("value : "+cookieArr[i].getValue()+"<br>");
		}
		*/
		Cookie cookie = new Cookie("testCookie", "myCookie");
		cookie.setMaxAge(5);
		response.addCookie(cookie); //쿠키값을 사용자에게 전달
	%>
	
	<%if(bool == false){ //flase면 팝업창 열기, if문을 쓰고나선 팝업창이 한번만 열림 %>
	<script type="text/javascript">
		window.open("popup.jsp","","width=300,height=200,top=500,left=500")
	</script>
	<%} %>
</body>
</html>