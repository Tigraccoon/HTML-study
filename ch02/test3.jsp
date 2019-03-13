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

	String name = "김철수";
	out.println("이름 : " + name + "<br>");
	
%>

<!-- html 중간에 자바 태그를 쓸 수 있음.
단, =은 출력하라는 뜻이기 때문에 ; 를 쓰지 않는다. expression(표현식)이라고 부름 -->

이름 : <%=name %> <br>

이름 : <%out.println(name); %> <br>
나이 : 20

<p style="font-size: 40px; color: blue;">
<%
	name = "아무개";
	String addr = "서울시 강동구", email = "abc@google.com", hp = "010-1111-2522";
%>

이름 : <%=name %><br>
주소 : <%=addr %><br>
이메일 : <%=email %><br>
hp : <%=hp %>
</p>


</body>
</html>