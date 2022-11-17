<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>메일화면</h3>
<hr color="red">
<!-- 세션은 특정한 브라우저와 서버와의 연결을 의미!! -->
<!-- mail.jsp를 클릭했을 때, 로그인X -> 로그인페이지로 넘기기 -->
<!-- mail.jsp를 클릭했을 때, 로그인O -> 로그인 한사람 누구인지 프린트! -->
<%
	if(session.getAttribute("id") != null){
%>
		로그인한 사람 <%= session.getAttribute("id") %>
<%
	}else{ //response = 클라이언트에게 명령
		response.sendRedirect("login.html");
		//=브라우저야 login.html을 호출해!!
	}
%>
</body>
</html>