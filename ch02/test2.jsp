<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		int a=10;
		int b=20;
		out.println(a+b);
		String name = "김철수";
		int age = 20;
		out.println("<br>"+name+" 의 나이 : " + age + "<br>");
		//자바에서는 <br>을 문자열로 써줘야 함.
		out.println("100"+"200"+"<br>");
		out.println(100+200+"<br>");
		out.println(100+"200"+"<br>");
		
	%>

</body>
</html>