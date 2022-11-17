<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
</script>
</head>
<body>
<h3>뉴스화면</h3>
<hr color="red">
<%
	if(session.getAttribute("id") != null){
%>
	<%-- 로그인한 사람 <%= session.getAttribute("id") %> --%>
	<form action="amu.jsp">
		댓글을 입력하세요 <br>
		id(<%= session.getAttribute("id") %>) :<input type="text">
		<button>댓글달기</button>
	</form>
<%		
	}else{
%>
	<script type="text/javascript">
		alert('로그인화면으로 넘어갑니다.')
		location.href="login.html" //이것을 쓰지 않으면 alert는 뜨지 X
		//브라우저에서 화면넘김을 해야함. 서버에서 실행돼서 죽어버림.
	</script>
<%
		//response.sendRedirect("login.html");
	}
%>
</body>
</html>