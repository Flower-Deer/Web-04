<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	Cookie[] cookie = request.getCookies();
    	String[] result = {};
    	for(Cookie c : cookie){
    		if(!c.getName().equals("JSESSIONID")){
    			out.print(c.getValue() + "<br>");
    		}
    	}
    	out.print("<hr>");
    	
    	//!쿠키를 다른배열에 넣는법!
    	//나
    	Cookie[] lsit = cookie; //쿠키리스트는 쿠키리스트에만 담을 수 있다. String[] 안됨!!
    	String[] value = new String[cookie.length];
    	for(int i=0; i<value.length; i++){
    		value[i] = cookie[i].getValue();
    		out.print(value[i] + "<br>");
    	}
    	
    	out.print("<hr>");
    	
    	//강사님
    	String[] values = new String[cookie.length];
    	for(int i = 0; i < values.length; i++){
    		values[i] = cookie[i].getValue();
    		out.print(values[i] + "<br>");
    	}

    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
쿠키의 개수 : <%= cookie.length %> <br>
</body>
</html>