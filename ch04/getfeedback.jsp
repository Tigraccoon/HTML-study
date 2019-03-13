<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="text-align: center; font-size: 30px;">

<%

request.setCharacterEncoding("utf-8");

String feedback=request.getParameter("feedback");

//특수문자 처리
//문자열.replace(A,B) : 문자열 A에 포함된 내용을 B로 바꿈
//< : &lt;		> : &gt;
feedback=feedback.replace("<", "&lt;");
feedback=feedback.replace(">", "&gt;");
feedback=feedback.replace("\n", "<br>");
feedback=feedback.replace(" ", "&nbsp;");

%>

<h3>고객의 의견</h3>
<br>
<%=feedback %>

</body>
</html>