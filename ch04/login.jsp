<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<style type="text/css">
body{display: table; margin: auto; text-align: center;}
</style>
</head>
<body>

<%
request.setCharacterEncoding("utf-8");

String userid=request.getParameter("userid");
String pwd=request.getParameter("pwd");
String message="";
if(userid.equals("kim") && pwd.equals("1234")){
	message="Welcome Mr.kim!!";	
} else{
	message="아이디 또는 비밀번호가 일치하지 않다.";
}

%>
<br><br><br>
<h1><%=message %></h1>

</body>
</html>