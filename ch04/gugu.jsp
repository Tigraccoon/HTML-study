<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gugu</title>
<style type="text/css">
body{display: table; margin: auto; text-align: center;}
</style>
</head>
<body>

<%

request.setCharacterEncoding("utf-8");

int dan=Integer.parseInt(request.getParameter("dan"));
for(int i=1;i<=9;i++){
	out.println(dan + " * " + i + " = " + dan*i+"<br>");
}

%>


</body>
</html>