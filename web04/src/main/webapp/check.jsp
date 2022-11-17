<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String id = request.getParameter("id");
    	String pw = request.getParameter("pw");
    	
    	String id2 = "root";
    	String pw2 = "pass";
    	
    	String result = "로그인 실패";
    	
    	if(id.equals(id2) && pw.equals(pw2)){
    		result = "로그인 성공";
    		//로그인이 성공하면 : 세션(브라우저와 서버와의 연결1개) > 1)로그아웃하기 전이나 2)브라우저가 닫히기 전까지 => 내 정보를 서버에 저장해두자.
			//세션이 유지되는 동안 서버에 특정한 값들을 저장해 두었다가 아무때나 꺼내 그 변수값을 쓸 수 있다.
			session.setAttribute("id", id); //세션연결 서버에 id 저장
			//"id"세션에 저장될 새로운 이름! "user"로도 가능!
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	로그인 결과 : <%= result %> <br>
	세션으로 저장된 id의 값은 <%= session.getAttribute("id") %>
	<hr color="green">
	
	<a href ="news.jsp">
		<button>뉴스 사이트</button>
	</a>
	
	<a href ="shopping.jsp">
		<button>쇼핑 사이트</button>
	</a>
	
	<a href ="mail.jsp">
		<button>메일 사이트</button>
	</a>
</body>
</html>