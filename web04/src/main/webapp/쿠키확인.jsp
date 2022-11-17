<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//쿠키는 브라우저에 저장되었기 때문에 모두 다 서버로 가지고 온다.
    	//쿠키 배열로 가져오기!!!
    	Cookie[] cookies = request.getCookies();
    	
    	for(Cookie c : cookies){
    		out.print(c.getName() + "," + c.getValue() + "<br>");
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
쿠키의 개수 : <%= cookies.length %>
</body>
</html>