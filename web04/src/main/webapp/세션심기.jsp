<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
		String name = request.getParameter("name");
    	String age = request.getParameter("age");
    	
    	name = "hong";
    	age = "100";
    	
    	session.setAttribute("name", name);
    	session.setAttribute("age", age);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="세션보기.jsp">
		<button>저장된 세션 보러가기!!!</button>
	</form>
</body>
</html>