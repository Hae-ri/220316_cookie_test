<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
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
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
			}
		}
		response.sendRedirect("logoutOk.jsp");
	
	%>
</body>
</html>