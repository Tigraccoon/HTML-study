<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form_exam_result</title>
</head>
<body style="text-align: center; font-size: 30px;">

<%

request.setCharacterEncoding("utf-8");

String user_id = request.getParameter("user_id");
String pw = request.getParameter("pw");
String user_name = request.getParameter("user_name");
String user_mail = request.getParameter("user_mail");
String birth = request.getParameter("birth");

%>

아이디 : <%=user_id %><br>
비밀번호 : <%=pw %><br>
이름 : <%=user_name %><br>
이메일 : <%=user_mail %><br>
생년월일 : <%=birth %><br>
</body>
</html>