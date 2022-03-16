<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 환영</title>
</head>
<body>
	<%
		Cookie [] cookies = request.getCookies();
		
		for(int i=0 ; i<cookies.length ; i++)
		{
			String cookieName = cookies[i].getName(); // 쿠키의 이름 m_id
			String cookieValue = cookies[i].getValue(); // 쿠키의 속성값 abc
			if(cookieValue.equals("abc"))
			{
				out.println(cookieValue + "님 반갑습니다.");
			}
		}
	%>
	
	<br>
	<a href="logout.jsp">로그아웃</a>
</body>
</html>