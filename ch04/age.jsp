<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>age</title>
<style type="text/css">
body{display: table; margin: auto; text-align: center;}
</style>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String name=request.getParameter("name");
int year = Integer.parseInt(request.getParameter("year"));
int age = 2019-year;
String old;
if(age<=19){
	old="미성년자";
} else if(age<=29){
	old="20대";
} else if(age<=39){
	old="30대";
}else{
	old="40대 이상";
}
%>
<%=name%> 의 나이는 <%=age %> 이고, 
<%=old %> 입니다.
</body>
</html>